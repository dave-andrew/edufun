@extends('app')

@section('title', 'Writers')

@section('content')

    <h1 class="p-5">Our Writers</h1>

    <div class="d-flex justify-content-center align-items-center">
        
        <div class="row">
            @foreach ($writers as $writer)
                <div class="col-md-4 d-flex justify-content-center">
                    <div class="card m-4" style="cursor: pointer;" onclick="window.location='{{ route('writers.articles', [$writer->name]) }}'"">
                        <div class="card-body d-flex flex-column text-center justify-content-center align-items-center">
                            <img src="{{$writer->image}}" class="rounded-circle" width="200" height="200" alt="...">
                            <p class="pt-4 fs-5"><b>{{$writer->name}}</b></p>
                            <p>{{$writer->specialty}}</p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

    </div>
@endsection