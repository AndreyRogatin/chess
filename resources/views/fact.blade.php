@extends('layouts.app')

@section('content')
    @foreach($data as $fact)
        <h4>{{ $fact->title }}</h4>
        {!! $fact->content !!}
    @endforeach
@endsection
