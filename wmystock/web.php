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
Route::get('blog/{slug}', ['as' => 'blog.single', 'uses' => 'BlogController@getSingle'])->where('slug', '[\w\d\-\_]+');

//authentication routes old authentication
Route::get('auth/login', ['as' => 'login', 'uses' => 'Auth\LoginController@getLogin']);
//Route::post('auth/login', 'Auth\LoginController@postLogin');
Route::get('auth/logout', ['as' => 'logout', 'uses' => 'Auth\LoginController@getLogout']);

//registration routes old authentication
/*Route::get('auth/register', 'Auth\RegisterController@getRegister');
Route::post('auth/register', 'Auth\RegisterController@postRegister');*/

//password reset routes
Route::get('password/reset/{token?}', 'Auth\ResetPasswordController@showResetForm');
Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail');
Route::post('password/reset', 'Auth\ResetPasswordController@reset');

Route::get('blog', ['uses' => 'BlogController@getIndex', 'as' => 'blog.index']);
Route::get('contact','PagesController@getContact');
Route::get('about','PagesController@getAbout');
Route::get('/','PagesController@getIndex');
Route::resource('posts','PostController');
