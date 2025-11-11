<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use App\Models\User;
use App\Models\Contact;

class AdminController extends Controller
{
    public function index()
    {
        $categories = Category::count();
        $posts = Post::count();
        $tags = Tag::count();
        $users = User::count();
        $news_letter_users = User::where('news_letter', true)->count();
        $contacts = Contact::count();

        return view('admin.index', compact('categories', 'posts', 'tags', 'users', 'news_letter_users', 'contacts'));
    }
}
