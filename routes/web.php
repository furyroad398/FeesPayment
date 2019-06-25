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

Route::get('/add', 'StudentController@index'), //add student form
Route::post('/add/student', 'StudentController@create'), //save student details 
Route::get('/search/', 'StudentController@search'), // get results from search method 

Route::get('/payfee', 'FeeController@index'), // get student fees are being paid
Route::post('/paid/finished', 'FeeController@payFees'), //Go to payfees method to save payment
Route::get('/payments', 'FeeController@searchPayment'),// Go to searchPayment for transaction history
Route::get('/payments/results', 'FeeController@getPayment'),//Get results from searchPayment form

    ]
);


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
