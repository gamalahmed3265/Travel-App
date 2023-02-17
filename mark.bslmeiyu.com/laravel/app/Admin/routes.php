<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {
    $router->resource('users', UserController::class);
    $router->resource('articles', ArticleController::class);
    $router->resource('article-types', ArticleTypeController::class);
    $router->resource('places', PlacesController::class);
    $router->get('/', 'HomeController@index')->name('home');

});
