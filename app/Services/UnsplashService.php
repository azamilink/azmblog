<?php

namespace App\Services;

use GuzzleHttp\Client;

class UnsplashServices
{
    protected $client;

    public function __construct()
    {
        $this->client = new Client([
            'base_uri' => 'https://api.unsplash.com/'
        ]);
    }

    public function searchPhoto($query, $perPage = 10, $page = 1)
    {
        $response = $this->client->get('search/photos', [
            'query' => [
                'query' => $query,
                'per_page' => $perPage,
                'page' => $page,
                'clien_id' => config('services.unsplash.access_key')
            ]
        ]);

        return json_decode($response->getBody(), true);
    }
}
