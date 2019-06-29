<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});
 
// Routing Autentikasi login
$router->post('/login', 'AuthController@autentikasi');

$router->get('/buat-password', function() use ($router){
	echo app('hash')->make('tespassword');
});

$router->group(['middleware' => 'user.auth'], function () use ($router) {
    // Routing CRUD Data
	$router->get('/crud', 'CrudController@index');
	$router->get('/crud/{id}', 'CrudController@show');
	$router->post('/crud', 'CrudController@store');
	$router->put('/crud/{id}', 'CrudController@update');
	$router->delete('/crud/{id}', 'CrudController@destroy');
	$router->put('/change_status/{id}', 'CrudController@change_status');
	$router->put('/change_type/{id}', 'CrudController@change_type');
	$router->get('/sorting', 'CrudController@sorting');
});
