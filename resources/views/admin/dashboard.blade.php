@extends('admin.layouts.app_admin')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
    </div>
    <h2>Сводная таблица</h2>
    <div class="table-responsive">
        <table class="table table-striped table-sm">
            <thead>
            <tr>
                <th>Название таблицы</th>
                <th>Количество записей</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Факты</td>
                <td>{{ $fact }}</td>
            </tr>
            <tr>
                <td>Шахматисты</td>
                <td>{{ $persons }}</td>
            </tr>
            <tr>
                <td>Пользователи</td>
                <td>{{ $users }}</td>
            </tr>
            <tr>
                <td>Галерея</td>
                <td>{{ $images }}</td>
            </tr>
            </tbody>
        </table>
    </div>
@endsection