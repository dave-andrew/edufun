@extends('app')

@section('title', "{{$article->title}}")

@section('content')
    
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1 class="p-5">{{$article->title}}</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <img src="{{$article->image}}" alt="" class="w-100" height="500">
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <p class="p-5">{{$article->body}}</p>
            </div>
        </div>
    </div>

@endsection