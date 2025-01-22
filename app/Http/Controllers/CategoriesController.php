<?php

namespace App\Http\Controllers;

use App\Models\Category;
use GuzzleHttp\Client;

class CategoriesController extends Controller
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
        $search = $this->searchPhoto('web development', 3, 1);
        $photos = $search['results'];

        return view('categories', [
            "title" => "Categories",
            "active" => 'categories',
            "photos" => $photos,
            "categories" => Category::all(),
        ]);
    }
}
