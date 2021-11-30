<?php

namespace App\Http\Controllers;

use App\Admin;
use App\Product;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function index()
    {
//        $data = Product::all();
//        $countProduct = Product::count();
//        dd($countProduct);
        $data = Product::latest()->paginate(10);    // Lấy dữ liệu phân trang
        $users = User::all();
        return view('backend.admin.index', ['data'=> $data], ['users'=>$users]);
    }

    public function login()
    {
        return view('backend.login');
    }

    public function postLogin(Request $request)
    {
        $params = $request->all();

        $data = [
            'email' => $params['email'],
            'password' => $params['password']
        ];

        // SELECT * FROM user WHERE email = ? and password = ? => tìm thấy user thỏa điều kiện => login

        // check success
        if (Auth::attempt($data, $request->has('remember'))) {
            return redirect()->route('admin.product.index');
        }

        return redirect()->back()->with('msg', 'Email hoặc Password không chính xác');
    }

    public function logout()
    {
        // xử lý đăng xuất
        Auth::logout();

        // chuyển về trang đăng nhập
        return redirect()->route('admin.login');
    }
}
