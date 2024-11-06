<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;

class ArticleController
{
    public function show(Request $request) {
        $article = Article::find($request->article);

        return view('pages.articles', compact('article'));
    }
}
