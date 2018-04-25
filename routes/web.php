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

Route::get('/', 'PostController@index');
Route::get('/search','PostController@search');
Route::delete('/deleteall','PostController@deleteAll');
Route::get('/crud','CrudController@create');
Route::resource('posts','PostController');
Route::resource('cruds','CrudController');