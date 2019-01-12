<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'SimplePageController@action');
Route::get('/history', 'SimplePageController@action');
Route::get('/rules', 'SimplePageController@action');
Route::get('/fact', 'FactController@action');
Route::get('/persons', 'SimplePageController@action');
Route::get('/gallery', 'SimplePageController@action');

Route::redirect('/index', '/');

Route::get('/{category?}/{id?}', function ($category = 'base', $id = 25) {
    echo 'Category: ' . $category . '<br>';
    echo 'Id: ' . $id;
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
