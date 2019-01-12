@extends('layouts.app')

@section('content')
    @foreach($persons as $person)
        <h4>{{ $person->name }} ({{ $person->life }}), {{ $person->country }}</h4>
        <p>{{ $person->about }}</p>
    @endforeach
@endsection
