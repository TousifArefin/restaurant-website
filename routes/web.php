<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ItemController;
//use App\Http\Controllers\Admin\ReservationController;
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
Auth::routes();


Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('welcome');

Route::post('/reservation', [App\Http\Controllers\ReservationController::class,'reserve'])->name('reservation.reserve');


Route::group(['prefix' => 'admin' , 'middleware' => 'auth'], function(){
    Route::get('dashboard', [App\Http\Controllers\Admin\DashboardController::class, 'index'])->name('admin.dashboard');
    Route::resource('slider', SliderController::class );
    Route::resource('category', CategoryController::class );
    Route::resource('item', ItemController::class );

    Route::get('reservation',[App\Http\Controllers\Admin\ReservationController::class, 'index'])->name('reservation.index');
    Route::post('/reservation/status/{id}',[App\Http\Controllers\Admin\ReservationController::class, 'status'])->name('reservation.status');
    Route::post('/reservation/delete/{id}',[App\Http\Controllers\Admin\ReservationController::class, 'destroy'])->name('reservation.destroy');
});

 