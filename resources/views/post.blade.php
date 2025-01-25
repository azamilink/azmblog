@extends('layouts.main')

@section('container')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h1 class="mb-3">{{ $post['title'] }}</h1>

                <p>By. <a href="/blog?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/blog?category={{ $post->category->slug }}">{{ $post->category->name }}</a></p>

                @if ($post->image)
                    <div style="max-height: 400px; overflow:hidden;">
                        <img src="{{ asset($post->image) }}" alt="{{ $post->category->name }}" class="im-fluid">
                    </div>
                @else
                    <img src="{{ $photos[0]['urls']['small'] }}" alt="{{ $post->category->name }}" class="img-fluid">
                @endif


                <article class="my-3 fs-5">
                    {!! $post['body'] !!}
                </article>
                <a href="/" class="d-block mt-3">Back to blog</a>
            </div>
        </div>
    </div>
@endsection
