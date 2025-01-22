<?php

use App\Models\User;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\AdminCategoryController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\DashboardPostController;
use Illuminate\Support\Facades\Artisan;

// Halaman blog
Route::get('/', [PostController::class, 'index'])->name('blog');

// Halaman single post
Route::get('posts/{post:slug}', [PostController::class, 'show']);

// Halaman category
Route::get('/categories', [CategoriesController::class, 'index']);

// Halaman single category
Route::get('/categories/{category:slug}', function (Category $category) {
    return view('blog', [
        'title' => "Post by Category : $category->name",
        "active" => 'categories',
        'blogs' => $category->posts->load(['category', 'author']),
    ]);
});

Route::get('/authors/{author:username}', function (User $author) {
    return view('blog', [
        'title' => "Post by Author : $author->name",
        'active' => 'blog',
        'blogs' => $author->posts->load(['category', 'author']),
    ]);
});

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/dashboard', function () {
    return view('dashboard.index');
})->middleware('auth');


Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');
Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');

Route::resource('/dashboard/categories', AdminCategoryController::class)->except('show')->middleware('admin');

Route::get('/symlink', function () {
    Artisan::call('storage:link');
});
