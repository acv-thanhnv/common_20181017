<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| Api Routes
|--------------------------------------------------------------------------
|
| Here is where you can register Api routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your Api!
|
*/
Route::match(array('GET','POST'),'/api/v1/auth/login', 'Auth\UserController@login')->name('api_v1_login_call');
Route::post('/api/v1/register-normal', 'Auth\UserController@registerNormal')->name('api.v1.registerNormal.call');
Route::group(['middleware' => [ 'auth:api' ]],function (){
    Route::get('/api/v1/catelory/all', 'CateloryController@index');
    Route::match(array('GET','POST'),'/api/v1/auth/logout', 'Auth\UserController@logout')->name('api.v1.logout.call');
});


