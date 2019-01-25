@extends('admin.layouts.app_admin')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">{{ $title }}</h1>
    </div>
    <div>
        <form method="post" action="{{ route('admin.person.store') }}" class="needs-validation">
            @csrf

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="name">Имя</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="life">Годы жизни</label>
                    <input type="text" class="form-control" id="life" name="life" required>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="coutry">Страна</label>
                    <input type="text" class="form-control" id="country" name="country" required>
                </div>
            </div>
            <div class="mb-3">
                <label for="about">Достижения</label>
                <div class="input-group">
                    <textarea class="form-control" id="about" name="about" rows="10" required></textarea>
                </div>
            </div>
            <button class="btn btn-primary btn-lg btn-block" type="submit">Создать</button>
        </form>
    </div>
@endsection