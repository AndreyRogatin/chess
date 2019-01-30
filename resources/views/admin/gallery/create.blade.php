@extends('admin.layouts.app_admin')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">{{ $title }}</h1>
    </div>
    <div>
        <form action="{{ route('admin.gallery.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <input type="file" name="image">
            <input type="submit" class="btn btn-sm btn-outline-secondary" value="Добавить"/>
        </form>
    </div>
@endsection