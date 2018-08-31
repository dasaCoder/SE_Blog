<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group.
|
*/

Route::get('/', 'BlogController@getList');

Auth::routes();

Route::get('/admin','AdminController@index')->name('admin.landing');

Route::get('/home', 'BlogController@getList')->name('home');

Route::get('/blog/list','BlogController@getList')->name('blog.list');

// need to authenticate

Route::get('/blog/create',function (){
    return view('blog.create');
})->name('blog.create');

Route::get('/blog/update/{id}','BlogController@toUpdate');


Route::get('/blog/{id}', 'BlogController@getOne')->middleware('auth')->name('blog');

Route::post('/blog','BlogController@create')->name('blog');

Route::patch('/blog/{id}', 'BlogController@update');

Route::delete('/blog/{id}','BlogController@destroy');


Route::get('admin/report','ExportExcelController@index');
Route::get('/report/download','ExportExcelController@excel')->name('export_excel.excel');
Route::get('/report/blogs/download','ExportExcelController@excelBlogs')->name('export_blogs.excel');


// OAuth Routes


Route::get('/login/{social}','Auth\LoginController@socialLogin')
    ->where('social','twitter|facebook|linkedin|google|github');
Route::get('/login/{social}/callback','Auth\LoginController@handleProviderCallback')
    ->where('social','twitter|facebook|linkedin|google|github');