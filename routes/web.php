<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/
//Categories
Route::resource('categories', 'CategoryController', ['except' => ['create']]);
//Comments
Route::post('comments/{post_id}', ['uses'=>'CommentsController@store', 'as'=>'comments.store']);
Route::get('comments/{id}/edit', ['uses'=>'CommentsController@edit', 'as'=>'comments.edit']);
Route::put('comments/{id}', ['uses'=>'CommentsController@update', 'as'=>'comments.update']);
Route::delete('comments/{id}', ['uses'=>'CommentsController@destroy', 'as'=>'comments.destroy']);
Route::get('comments/{id}', ['uses'=>'CommentsController@delete', 'as'=>'comments.delete']);
//Tags
Route::resource('tags', 'TagController', ['except' => ['create']]);

Route::get('blog/{slug}', ['as' => 'blog.single', 'uses' => 'BlogController@getSingle'])->where('slug', '[\w\d\-\_]+');

Route::get('blog', ['uses' => 'BlogController@getIndex', 'as' => 'blog.index']);
Route::get('contact','PagesController@getContact');
Route::get('about','PagesController@getAbout');
Route::get('/','PagesController@getIndex');
Route::post('/contact/', 'PagesController@postContact');
Route::resource('posts','PostController');

Auth::routes();

Route::get('/home', 'HomeController@index');
