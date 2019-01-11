<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ $title ?? config('app.name', 'Chess Project') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/blog.css') }}" rel="stylesheet">
</head>
<body>
<div id="app">
    <div class="container">
        <header class="blog-header py-3">
            <div class="row flex-nowrap justify-content-between align-items-center">
                <div class="col-4 pt-1">
                    <a class="navbar-brand text-dark" href="{{ url('/') }}">
                        Шах и Мат
                    </a>
                </div>
                <div class="col-4 text-center">
                    <a class="blog-header-logo text-dark" href="/">
                        <img src="/svg/chess-top.svg">
                    </a>
                </div>
                <div class="col-4 d-flex justify-content-end align-items-center">
                    @guest
                    <a class="btn btn-sm btn-outline-secondary" href="{{ route('login') }}">{{ __('Войти') }}</a>
                    @if (Route::has('register'))
                        <a class="btn btn-sm btn-outline-secondary"
                           href="{{ route('register') }}">{{ __('Регистрация') }}</a>
                    @endif
                    @else
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('home') }}">
                                Профиль
                            </a>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                                 document.getElementById('logout-form').submit();">
                                {{ __('Выйти') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                  style="display: none;">
                                @csrf
                            </form>
                        </div>
                        @endguest
                </div>
            </div>
        </header>
        <div class="nav-scroller py-1 mb-2">
            <nav class="nav d-flex justify-content-between">
                <a class="p-2 text-muted" href="{{ url('/history') }}">История шахмат</a>
                <a class="p-2 text-muted" href="{{ url('/rules') }}">Правила игры</a>
                <a class="p-2 text-muted" href="{{ url('/fact') }}">Интересные факты</a>
                <a class="p-2 text-muted" href="{{ url('/persons') }}">Известные шахматисты</a>
                <a class="p-2 text-muted" href="{{ url('/gallery') }}">Галерея</a>
            </nav>
        </div>
        <div class="container">
            <img src="/svg/chess.svg">
        </div>
        <main class="py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">{{ $title ?? config('app.name', 'Chess Project') }}</div>
                            <div class="card-body">
                                @yield('content')
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <footer class="blog-footer">
        <p>&copy; Chess Project 2019</p>
    </footer>
</div>
</body>
</html>
