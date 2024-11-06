<?php

use App\Http\Controllers\ArticleController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;


Route::get('/', [PagesController::class, 'index'])->name('home');
Route::get('/about', [PagesController::class, 'about'])->name('about');
Route::get('/category/{categories}', [PagesController::class, 'category'])->name('category');
Route::get('/writers', [PagesController::class, 'writers'])->name('writers');
Route::get('/writers/{user}', [UserController::class, 'show'])->name('writers.articles');
Route::get('/contact', [PagesController::class, 'popular'])->name('popular');
Route::get('/articles/{article}', [ArticleController::class, 'show'])->name('articles.show');
