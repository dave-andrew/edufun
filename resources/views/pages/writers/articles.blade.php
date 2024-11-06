@extends('app')

@section('title', 'About')

@section('content')
    <div class="min-vh-100">
        <h1 class="p-5">Writer Article Page</h1>

        <div class="list-group d-flex justify-content-center align-items-center m-4">
            @foreach ($user->articles as $article)
                @include('layouts.article-item', ['article' => $article])
            @endforeach
        </div>
    </div>
@endsection