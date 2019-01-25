@extends('admin.layouts.app_admin')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">{{ $title }}</h1>
    </div>
    <div>
        <form method="post" action="{{ route('admin.person.update', ['id' => $person->id]) }}" class="needs-validation">
            @method('PUT')
            @csrf

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="name">Имя</label>
                    <input type="text" class="form-control" id="name" name="name" value="{{ $person->name }}" required>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="life">Годы жизни</label>
                    <input type="text" class="form-control" id="life" name="life" value="{{ $person->life }}" required>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="coutry">Страна</label>
                    <input type="text" class="form-control" id="country" name="country" value="{{ $person->country }}" required>
                </div>
            </div>
            <div class="mb-3">
                <label for="about">Достижения</label>
                <div class="input-group">
                    <textarea class="form-control" id="about" name="about" rows="10" required>{{ $person->about }}</textarea>
                </div>
            </div>
            <button class="btn btn-primary btn-lg btn-block" type="submit">Обновить</button>
        </form>
    </div>
@endsection