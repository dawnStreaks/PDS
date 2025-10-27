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


// Zoho OAuth callback route
Route::get('/oauth/zoho/callback', [App\Http\Controllers\ZohoOAuthController::class, 'callback']);

require __DIR__ . '/front.php';
require __DIR__ . '/admin.php';
require __DIR__ . '/auth.php';
