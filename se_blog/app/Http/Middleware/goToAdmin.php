<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class goToAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::user() &&  Auth::user()->isAdmin == 1) {
            return redirect()->route('admin.landing');
        }
        else{
            return redirect('/home1');
        }

        //return redirect('/');
    }
}
