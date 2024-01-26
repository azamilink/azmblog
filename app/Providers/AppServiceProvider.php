<?php

namespace App\Providers;

use App\Models\User;
use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Gate;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
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
