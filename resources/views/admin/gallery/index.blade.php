@extends('admin.layouts.app_admin')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">{{ $title }}</h1>
        <div class="mb-2 mb-md-0">
            <div class="mr-2">
                <a class="btn btn-sm btn-outline-secondary" href="{{ route('admin.gallery.create') }}">Добавить</a>
            </div>
        </div>
    </div>

    <h3>Фотогалерея</h3>
    <div class="table-responsive">
        @foreach($images as $image)
            <div class="card box-shadow float-left">
                <a href="{{ route('admin.gallery.show', ['id' => $image->id]) }}">
                    <img class="mb-4" src="{{ asset('storage/upload/'.$image->img) }}"
                         alt="{{ $image->title }}" height="200px">
                </a>
            </div>
        @endforeach
    </div>
@endsection