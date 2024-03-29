<?php

use App\Models\User;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\AdminCategoryController;
use App\Http\Controllers\DashboardPostController;



Route::get('/', function () {
    return view('home', [
        "title" => "Home",
        "active" => 'home',
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "active" => 'about',
        "name" => "Aswad Zami",
        "email" => "zamiaswad@gmail.com",
        "image" => "aswad.jpg"
    ]);
});

// Halaman blog
Route::get('/blog', [PostController::class, 'index']);

// Halaman single post
Route::get('posts/{post:slug}', [PostController::class, 'show']);

// Halaman category
Route::get('/categories', function () {
    return view('categories', [
        "title" => "Categories",
        "active" => 'categories',
        "categories" => Category::all(),
    ]);
});

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


// Halaman single category
/** 
Route::get('/categories/{category:slug}', function (Category $category) {
    return view('category', [
        'title' => $category->name,
        'posts' => $category->posts,
        'category' => $category->name
    ]);
});
 */

// Halaman single author
/** 
Route::get('/authors/{user:username}', function (User $user) {
    return view('blog', [
        'title' => 'User Posts',
        'blogs' => $user->posts,
    ]);
});
 */
