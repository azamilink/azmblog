<?php

namespace App\Providers;

use App\Models\User;
use App\Services\UnsplashServices;
use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Gate;
use UnsplashServicesImp;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
         if ($this->app->environment('local') && config('clockwork.enable')) {
        $this->app->register(\Clockwork\Support\Laravel\ClockworkServiceProvider::class);
    }
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // untuk mengaktifkan template pagination milik bootstrap:
        Paginator::useBootstrap();


        Gate::define('admin', function (User $user) {
            // Jika is_admin = 1 maka True, jika 0 maka false:
            return $user->is_admin;
        });
    }
}
