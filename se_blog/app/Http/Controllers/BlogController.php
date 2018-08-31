<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Blog;
use Auth;

class BlogController extends Controller
{
    function getOne($id){
        $blog = Blog::findorfail($id);
        return view('blog.single')->with('blog',$blog);
    }



    public function create(Request $request){
        
        // form validation
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'body' => 'required',
        ]);


        $blog = new Blog;

        $blog->title = $request->input("title");
        $blog->body = $request->input('body');
        $blog->type = $request->input('type');
        $blog->user_id = Auth::user()->id;

        $blog->save();

        return redirect()->route('blog.list');


    }

    public function getList(){
        $blogs = Blog::all();

        return view('blog')->with('blogs',$blogs);
    }

    public function toUpdate($id){
        $blog = Blog::findorfail($id);

        return view('blog.update')->with('blog',$blog);
    }

    public function update(Request $request,$id){
        Blog::where('id',$id)->update($request->except(['_token','_method']));
        return redirect()->route('blog.list');
    }

    public function delete($id){
        $blog = Blog::findorfail($id);
        $blog->delete();
        return redirect()->route('blog.list');
    }
}
