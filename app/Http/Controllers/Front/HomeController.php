<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Post;

class HomeController extends Controller
{
    // Home Page
    public function index()
    {
        // Get the active posts with (Category and User) details
        $posts = Post::published()->with(['category', 'user'])->latest('created_at')->paginate(10);

        return view('front.index', compact('posts'));
    }
    public function about()
    {
        return view('front.about');
    }

    // public function Services()
    // {
    //     // Get the active posts with (Category and User) details
    //     $posts = Post::published()->with(['category', 'user'])->latest('created_at')->paginate(10);

    //     return view('front.index', compact('posts'));
    // }
}
