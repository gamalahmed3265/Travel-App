<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/register', 'App\Http\Controllers\UserController@regiser');
Route::post('/login', 'App\Http\Controllers\UserController@login');

Route::get('/welcomeinfo', 'App\Http\Controllers\ArticlesController@welcomeInfo');
Route::get('/recommendedarticles', 'App\Http\Controllers\ArticlesController@getRecommended');
Route::get('/allarticles', 'App\Http\Controllers\ArticlesController@allArticles');

Route::get('/getplaces', 'App\Http\Controllers\PlacesController@index');
 Route::get('/popular', 'App\Http\Controllers\Api\V1\ProductController@get_popular_products');
//Route::post('/submitinfo', 'App\Http\Controllers\BillInfoController@submitInfo');