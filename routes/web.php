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
Route::get('/persons', 'PersonController@action');
Route::get('/gallery', 'ImageController@index');

Route::redirect('/index', '/');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix' => 'admin', 'namespace' => 'Admin', 'middleware' => ['auth'] ], function () {
    Route::get('/', 'DashboardController@dashboard')->name('admin.index');
    Route::resource('/fact', 'FactController', ['as'=>'admin']);
});

