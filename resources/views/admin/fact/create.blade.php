@extends('admin.layouts.app_admin')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">{{ $title }}</h1>
    </div>
    <div>
        <form method="post" action="{{ route('admin.fact.store') }}" class="needs-validation">
            @csrf

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="title">Заголовок</label>
                    <input type="text" class="form-control" id="title" name="title" value="{{ old('title') }}" required>
                    <div class="invalid-feedback">
                        Title is required.
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <label for="content">Текст</label>
                <div class="input-group">
                    <textarea class="form-control" id="content" name="content" required></textarea>
                    <div class="invalid-feedback" style="width: 100%;">
                        Content is required.
                    </div>
                </div>
            </div>
            <button class="btn btn-primary btn-lg btn-block" type="submit">Добавить</button>
        </form>
    </div>
@endsection