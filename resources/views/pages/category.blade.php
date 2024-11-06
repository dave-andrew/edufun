@extends('app')

@section('title', 'Category')

@section('content')
    
    <h1 class="p-5">{{$category->name}}</h1>
    <div class="list-group d-flex justify-content-center align-items-center m-4">
        @foreach ($category->articles as $article)
            @include('layouts.article-item', ['article' => $article])
        @endforeach
    </div>

@endsection