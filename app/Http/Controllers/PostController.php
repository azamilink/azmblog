<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use App\Models\User;
use GuzzleHttp\Client;

class PostController extends Controller
{

    public function searchPhoto($query, $perPage = 15, $page = 1)
    {
        $client = new Client(['base_uri' => 'https://api.unsplash.com/random']);

        $response = $client->get('search/photos', [
            'query' => [
                'query' => $query,
                'per_page' => $perPage,
                'page' => $page,
                'client_id' => config('services.unsplash.access_key')
            ]
        ]);

        return json_decode($response->getBody(), true);
    }


    public function index()
    {
        $search = $this->searchPhoto('web development');
        $photos = $search['results'];
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
            "photos" => $photos,
            "blogs" => Post::latest()
                ->filter(request(['search', 'category', 'author']))
                ->paginate(15)
                ->withQueryString()
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
