@extends('admin.layouts.app_admin')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">{{ $title }}</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <form action="{{ route('admin.fact.destroy', ['id' => $fact->id]) }}" method="POST">
                    @method('DELETE')
                    @csrf
                    <input type="submit" class="btn btn-sm btn-outline-secondary" value="Удалить"/>
                </form>
                <a class="btn btn-sm btn-outline-secondary" href="{{ route('admin.fact.edit', ['id' => $fact->id]) }}">Редакторовать</a>
            </div>
        </div>
    </div>

    @php
        //dump($fact);
    @endphp

    <h3>{{ $fact->title }}</h3>
    <div>{!! $fact->content !!}</div>
@endsection