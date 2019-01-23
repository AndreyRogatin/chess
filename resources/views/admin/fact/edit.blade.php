@extends('admin.layouts.app_admin')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">{{ $title }}</h1>
    </div>
    <div>
        <form method="post" action="{{ route('admin.fact.update', ['id' => $fact->id]) }}" class="needs-validation">
            @method('PUT')
            @csrf

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="title">Заголовок</label>
                    <input type="text" class="form-control" id="title" name="title" value="{{ $fact->title }}" required>
                </div>
            </div>
            <div class="mb-3">
                <label for="content">Текст</label>
                <div class="input-group">
                    <textarea class="form-control" id="content" name="content" required>{{ $fact->content }}</textarea>
                </div>
            </div>
            <button class="btn btn-primary btn-lg btn-block" type="submit">Обновить</button>
        </form>
    </div>
@endsection