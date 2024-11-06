@extends('app')

@section('title', 'Home')

@section('content')
    
    <img src="https://picsum.photos/200/300.jpg" alt="" class="w-100" height="500" style="z-index: -1;">
    
    <div class="list-group d-flex justify-content-center align-items-center m-4">
        @foreach ($categories as $category)
            @php   
                $article = $category->articles->random();
            @endphp 
            @if ($article)                
                @include('layouts.article-item', ['article' => $article])
            @endif
        @endforeach
    </div>

@endsection