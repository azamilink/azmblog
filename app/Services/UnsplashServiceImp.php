<?php

use App\Services\UnsplashServices;

class UnsplashServicesImp implements UnsplashServices

{
    protected $unsplashService;

    public function __construct(UnsplashServices $unsplashService)
    {
        $this->unsplashService = $unsplashService;
        $this->search();
    }

    public function search()
    {
        $photos = $this->unsplashService->searchPhoto('web development');

        return $photos;
    }
}
