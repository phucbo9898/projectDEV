<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class CheckLogin
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
        // kiểm tra đăng nhập rồi thì tiếp tuc request
        if (Auth::check())
        {
            return $next($request);
        }

        // chuyển về trang đăng nhâp
        return redirect()->route('admin.login');
    }
}
