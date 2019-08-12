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

use Illuminate\Http\Request;

Route::get('/', function () {
    return view('welcome');
});
Route::get('admin/login','UsersController@getLoginAdmin');
Route::post('admin/login','UsersController@postLoginAdmin');
Route::get('admin/logout','UsersController@getLogoutAdmin')->name('logout');
Route::group(['prefix' => 'admin','middleware'=>'adminLogin'], function () {
    Route::group(['prefix' => 'products'], function () {
        Route::get('list', 'ProductsController@getList');
        Route::get('edit/{id}', 'ProductsController@getEdit')->where('id', '[0-9]+');
        Route::post('edit/{id}', 'ProductsController@postEdit')->where('id', '[0-9]+');
        Route::get('add', 'ProductsController@getAdd');
        Route::post('add', 'ProductsController@postAdd');
        Route::get('delete/{id}', 'ProductsController@getDelete')->where('id', '[0-9]+');
    });
    //

    Route::group(['prefix' => 'users'], function () {
        Route::get('list', 'UsersController@getList');
        Route::get('edit/{id}', 'UsersController@getEdit')->where('id', '[0-9]+');
        Route::post('edit/{id}', 'UsersController@postEdit')->where('id', '[0-9]+');
        Route::get('add', 'UsersController@getAdd');
        Route::post('add', 'UsersController@postAdd');
        Route::get('delete/{id}', 'UsersController@getDelete')->where('id', '[0-9]+');
    });

    Route::group(['prefix' => 'categories'], function () {
        Route::get('list', 'CategoriesController@getList');
        Route::get('edit/{id}', 'CategoriesController@getEdit')->where('id', '[0-9]+');
        Route::post('edit/{id}', 'CategoriesController@postEdit')->where('id', '[0-9]+');
        Route::get('add', 'CategoriesController@getAdd');
        Route::post('add', 'CategoriesController@postAdd');
        Route::get('delete/{id}', 'CategoriesController@getDelete')->where('id', '[0-9]+');
    });

});


