@extends('admin.layouts.app_admin')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">{{ $image->title }}</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <form action="{{ route('admin.gallery.destroy', ['id' => $image->id]) }}" method="POST">
                    @method('DELETE')
                    @csrf
                    <input type="submit" class="btn btn-sm btn-outline-secondary" value="Удалить"/>
                </form>
            </div>
        </div>
    </div>
    <div><img src="{{ asset('storage/upload/'.$image->img) }}" alt="{{ $image->title }}" style="max-width: 100%"></div>
    <div class="table-responsive">
        <table class="table table-striped table-sm">
            <tbody>
            <tr>
                <td>id</td>
                <td>{{ $image->id }}</td>
            </tr>
            <tr>
                <td>Название</td>
                <td>{{ $image->title }}</td>
            </tr>
            <tr>
                <td>Имя файла</td>
                <td>{{ $image->img }}</td>
            </tr>
            </tbody>
        </table>
    </div>
@endsection