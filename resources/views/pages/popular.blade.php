@extends('app')

@section('title', 'Popular')

@section('content')
    <h1 class="p-5">Popular</h1>

    <div class="paginate list-group d-flex justify-content-center align-items-center m-4">
        @foreach ($articles as $article)
            @include('layouts.article-item', ['article' => $article])
        @endforeach
    </div>

    <div class="d-flex justify-content-center mt-4 w-100">
        {{ $articles->links('pagination::bootstrap-4') }}
    </div>
@endsection