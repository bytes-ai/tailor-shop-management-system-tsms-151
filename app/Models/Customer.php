<?php

namespace App\Models;

use App\Traits\AccountingJournal;
use Illuminate\Notifications\Notifiable;

class Customer extends Base
{
    use AccountingJournal;
    use Notifiable;

    protected $fillable = ['name', 'email', 'phone', 'address', 'description', 'opening_balance'];

    public function account()
    {
        return $this->belongsTo(Account::class);
    }

    public function measurements()
    {
        return $this->hasMany(Measurement::class);
    }

    public function orders()
    {
        return $this->hasMany(Order::class);
    }

    public function payments()
    {
        return $this->hasMany(Payment::class);
    }

    public function routeNotificationForNexmo($notification)
    {
        return $this->phone;
    }

    public function scopeFilter($query, array $filters)
    {
        $query->when($filters['search'] ?? null, function ($query, $search) {
            $query->where('name', 'like', '%' . $search . '%')
                ->orWhere('email', 'like', '%' . $search . '%')
                ->orWhere('phone', 'like', '%' . $search . '%');
        })->when($filters['trashed'] ?? null, function ($query, $trashed) {
            if ($trashed === 'with') {
                $query->withTrashed();
            } elseif ($trashed === 'only') {
                $query->onlyTrashed();
            }
        });
    }
}
