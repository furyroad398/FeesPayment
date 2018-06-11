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
Auth::routes(
    [
        Route::get('/', 'StudentController@home'),

Route::get('/add', 'StudentController@index'), //Go to add student form
Route::post('/add/student', 'StudentController@create'), //save student details to database
Route::get('/search/', 'StudentController@search'), // Go to search method to get results

Route::get('/payfee', 'FeeController@index'), // Go to search form to get student whose fees are being paid
Route::post('/paid/finished', 'FeeController@payFees'), //Go to payfees method in order to save payment
Route::get('/payments', 'FeeController@searchPayment'),// Go to searchPayment form to find a student's transaction history
Route::get('/payments/results', 'FeeController@getPayment'),//Returns results from searchPayment form

    ]
);

