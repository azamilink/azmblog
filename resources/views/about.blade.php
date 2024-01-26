@extends('layouts.main')

@section('container')
<h1>Tentang Saya</h1>
<img src="img/aswad.jpg" alt="{{ $image }}" width="200" class="img-thumbnail rounded-circle">
<h3>{{ $name }}</h3>
<p>{{ $email }}</p>
@endsection
