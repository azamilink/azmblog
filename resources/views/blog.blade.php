@extends('layouts.main')

@section('container')
    <h1 class="mb-3 text-center">{{ $title }}</h1>

    <div class="row justify-content-center mb-3">
        <div class="col-md-6">
            <form action="/blog">
                @if (request('category'))
                    <input type="hidden" name="category" value="{{ request('category') }}">
                @endif
                @if (request('author'))
                    <input type="hidden" name="author" value="{{ request('author') }}">
                @endif
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Search..." name="search" value="{{ request('search') }}">
                    <button class="btn btn-danger" type="submit">Searchs</button>
                </div>
            </form>
        </div>
    </div>

    @if ($blogs->count() > 0)
        <div class="card mb-3">
            @if ($blogs[0]->image)
                <img src="{{ asset('storage/' . $blogs[0]->image) }}" class="card-img-top" alt="{{ $blogs[0]->category->name }}" style="max-height: 400px; overflow: hidden;">
            @else
                <img src="https://source.unsplash.com/600x400" class="card-img-top" alt="{{ $blogs[0]->category->name }}">
            @endif
            <div class="card-body text-center">
                <h3 class="card-title"><a href="/posts/{{ $blogs[0]->slug }}" class="text-decoration-none text-dark">{{ $blogs[0]->title }}</a></h3>
                <p>
                    <small class="text-muted">
                        By. <a href="/blog?author={{ $blogs[0]->author->username }}">{{ $blogs[0]->author->name }}</a> in <a href="/blog?category={{ $blogs[0]->category->slug }}" class="text-decoration-none">{{ $blogs[0]->category->name }}</a> {{ $blogs[0]->created_at->diffForHumans() }}
                    </small>
                </p>

                <p class="card-text">{{ $blogs[0]->excerpt }}</p>

                <a href="/posts/{{ $blogs[0]->slug }}" class="text-decoration-none btn btn-primary">Read more</a>
            </div>
        </div>

        <div class="container">
            <div class="row">
                @foreach ($blogs->skip(1) as $blog)
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="position-absolute px-3 py-2" style="background-color: rgba(0, 0, 0, 0.7)"><a href="/blog?category={{ $blog->category->slug }}" class="text-white text-decoration-none">{{ $blog->category->name }}</a></div>

                            @if ($blog->image)
                                <img src="{{ asset('storage/' . $blog->image) }}" alt="{{ $blog->category->name }}" class="im-fluid">
                            @else
                                <img src="https://source.unsplash.com/1200x400?{{ $blog->category->name }}" alt="{{ $blog->category->name }}" class="img-fluid">
                            @endif

                            <div class="card-body">
                                <h5 class="card-title">{{ $blog->title }}</h5>
                                <p>
                                    <small class="text-muted">
                                        By. <a href="/blog?author={{ $blog->author->username }}" class="text-text-decoration-none">{{ $blog->author->name }}</a> {{ $blog->created_at->diffForHumans() }}
                                    </small>
                                </p>
                                <p class="card-text">{{ $blog->excerpt }}</p>
                                <a href="/posts/{{ $blog->slug }}" class="btn btn-primary">Read more</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    @else
        <p class="text-center fs-4">No post found.</p>
    @endif

    <div class="d-flex justify-content-end">
        {{ $blogs->links() }}
    </div>
@endsection
