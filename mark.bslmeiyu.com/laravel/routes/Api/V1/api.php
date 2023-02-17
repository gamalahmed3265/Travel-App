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

Route::group(['namespace' => 'Api\V1'], function () {
    
       Route::group(['prefix' => 'products'], function () {
        Route::get('popular', 'App\Http\Controllers\Api\V1\ProductController@get_popular_products');
    }); 
});