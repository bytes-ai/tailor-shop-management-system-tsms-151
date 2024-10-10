<?php

namespace App\Providers;

use League\Glide\ServerFactory;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    public function boot()
    {
        Schema::defaultStringLength(191);
        \App\Models\Order::observe(\App\Observers\OrderObserver::class);
        \App\Models\Payment::observe(\App\Observers\PaymentObserver::class);
        \App\Models\Customer::observe(\App\Observers\CustomerObserver::class);
    }

    public function register()
    {
        $this->app->singleton('League\Glide\Server', function ($app) {
            $filesystem = $app->make('Illuminate\Contracts\Filesystem\Filesystem');
            return ServerFactory::create([
                'driver'            => 'gd',
                'base_url'          => url('/'),
                'cache_path_prefix' => '.cache',
                'cache'             => $filesystem->getDriver(),
                'source'            => $filesystem->getDriver(),
            ]);
        });
    }
}
