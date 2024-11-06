<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Category;
use App\Models\User;
use Illuminate\Http\Request;

class PagesController
{
    public function index()
    {
        $categories = Category::all();
        return view('pages.home', compact('categories'));
    }

    public function about()
    {
        return view('pages.about');
    }

    public function category(Request $request)
    {
        $category = Category::where('name', $request->categories)->first();
        return view('pages.category', compact('category'));
    }

    public function writers()
    {
        $writers = User::has('articles')->get();

        return view('pages.writers', compact('writers'));
    }

    public function popular()
    {
        $articles = Article::paginate(5);

        return view('pages.popular', compact('articles'));
    }
}
