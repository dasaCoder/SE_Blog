<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Blog;

class AdminController extends Controller
{
    public function index(){
        $blogs = Blog::all();

        return view('admin.landing')->with('blogs',$blogs);
    }
}
