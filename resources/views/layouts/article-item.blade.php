@php
    $url = route('articles.show', ['article' => $article->id]);
@endphp

<div class="list-group-item w-75">
    <div class="d-flex gap-4 w-100">
        <img src="{{$article->image_url}}" alt="" width="400" height="200" class="rounded">

        <a class="d-flex flex-column w-100 text-decoration-none text-black" style="cursor: default;" href="{{route('articles.show', ['article' => $article->id])}}">
            <h2>{{$article->title}}</h2>
            <div class="text-sm">{{$article->created_at->format('d F Y')}} | by: {{$article->user->name}}</div>
            <p>{{$article->body}}</p>
            <button class="align-self-end bg-primary text-white rounded-pill py-1 px-4" onclick="window.location='{{$url}}'">Read more...</button>
        </a>
    </div>
</div>