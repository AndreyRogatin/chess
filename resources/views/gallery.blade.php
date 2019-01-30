@extends('layouts.app')

@section('content')
    @foreach($images as $image)
        <p>
            <img class="gallery-img" src="{{ asset('storage/upload/'.$image->img) }}" alt="{{ $image->title }}">
        </p>
    @endforeach
@endsection
