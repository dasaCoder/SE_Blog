<?php

namespace App\Http\Middleware;

use Closure;

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
        if (Auth::user() &&  Auth::user()->admin == 1) {
            return redirect()->route('admin.landing');
        }
        else{
            return redirect('/home');
        }

        //return redirect('/');
    }
}
