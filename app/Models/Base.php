<?php

namespace App\Models;

use Ulid\Ulid;
use App\Traits\LogActivity;
use App\Traits\Restrictable;
use Spatie\Activitylog\LogOptions;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Base extends Model
{
    use HasFactory;
    use LogActivity;
    use Restrictable;
    use SoftDeletes;

    public $assignUser = false;

    public $hasReference = false;

    protected $perPage = 10;

    protected static function boot()
    {
        parent::boot();
        static::creating(function ($model) {
            if (!$model->account_id) {
                $model->account_id = auth()->user()->account_id;
            }
            if ($model->assignUser && !$model->user_id) {
                $model->user_id = auth()->user()->id;
            }
            if ($model->hasReference && !$model->reference) {
                $model->reference = Ulid::generate();
            }
            if ($model->hasHash) {
                $model->hash = sha1(now() . (string) Ulid::generate());
            }
        });

        static::addGlobalScope('account', function (Builder $builder) {
            $builder->where('account_id', auth()->user()->account_id ?? 0);
        });
    }

    public function resolveRouteBinding($value, $field = null)
    {
        return $this->where($this->getRouteKeyName(), $value)->withTrashed()->first();
    }

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults();
    }

    // public function resolveRouteBinding($value, $field = null)
    // {
    //     // return in_array(SoftDeletes::class, class_uses($this))
    //     return in_array(SoftDeletes::class, get_declared_traits())
    //         ? $this->where($this->getRouteKeyName(), $value)->withTrashed()->first()
    //         : parent::resolveRouteBinding($value);
    // }
}
