<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use App\Models\User;


class PostController extends Controller
{
    /** 
    public function index()
    {
        return view('blog', [
            "title" => "All Posts",
            "active" => 'blog',
            // "posts" => Post::all()
            // "blogs" => Post::with(['author', 'category'])->latest()->get()
            "blogs" => Post::latest()->get()
        ]);
    }
     */

    public function index()
    {
        $title = '';
        if (request('category')) {
            $category = Category::firstWhere('slug', request('category'));
            $title = ' in ' . $category->name;
        }

        if (request('author')) {
            $author = User::firstWhere('username', request('author'));
            $title = ' by ' . $author->name;
        }
        return view('blog', [
            "title" => "All Posts" . $title,
            "active" => 'blog',
            "blogs" => Post::latest()
                ->filter(request(['search', 'category', 'author']))
                ->paginate(7)
                ->withQueryString()
            // "posts" => Post::all()
            // "blogs" => Post::with(['author', 'category'])->latest()->get()
        ]);
    }

    public function show(Post $post)
    {
        return view('post', [
            "title" => "single post",
            "active" => 'blog',
            "post" => $post
        ]);
    }
}
