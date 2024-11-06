<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController
{
    public function show(Request $request) {
        $user = User::where('name', $request->user)->first();

        return view('pages.writers.articles', compact('user'));
    }
}
