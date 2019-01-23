@extends('admin.layouts.app_admin')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">{{ $title }}</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <a class="btn btn-sm btn-outline-secondary" href="{{ route('admin.fact.create') }}">Добавить</a>
            </div>
        </div>
    </div>

    <h3>Список записей</h3>
    <div class="table-responsive">
        <table class="table table-striped table-sm">
            <thead>
            <tr>
                <th>id</th>
                <th>title</th>
            </tr>
            </thead>
            <tbody>
            @foreach($fact as $item)
                <tr>
                    <td>{{ $item->id }}</td>
                    <td><a href="{{ route('admin.fact.show', ['id' => $item->id]) }}">{{ $item->title }}</a></td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
@endsection