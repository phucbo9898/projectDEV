<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= Category::all();
        return view('backend.category.index', ['data'=>$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data= Category::all(); // Lấy toàn bộ danh mục => build option danh mục cha

        return view('backend.category.create', ['data'=>$data]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validate dữ liệu gửi từ form
        $request->validate([
            'name' => 'required|max:255',
        ],[
            'name.required' => 'Nhập tên danh mục',
        ]);

        // Lấy toàn bộ tham số gửi từ form
        $params = $request->all();  // $_POST, $_GET

        // INSERT thêm vào CSDL
        $model = new Category();   // model brand sử dụng cơ chế ORM => tự động mapping với table brands
        $model->name = $params['name'];
        $model->slug = str_slug($params['name']);// khi sử dụng str_slug thì đồng hồ -> dong-ho
        $model->parent_id = $params['parent_id'];
        $model->position = $params['position'];
        $model->is_active = isset($params['is_active']) ? $params['is_active'] : 0;

        // Upload file
        if ($request->hasFile('image')) { // dòng này Kiểm tra xem có image có được chọn
            // get file
            $file = $request->file('image');
            // đặt tên cho file image
            $filename = time().'_'.$file->getClientOriginalName(); // $file->getClientOriginalName() == tên ban đầu của image
            // Định nghĩa đường dẫn sẽ upload lên
            $path_upload = 'uploads/category/';
            // Thực hiện upload file
            $file->move($path_upload,$filename); // upload lên thư mục public/uploads/product

            $model->image = $path_upload.$filename;
        }

        $model->save(); // chạy câu lệnh insert trong SQL: INSERT INTO MyGuests (firstname, lastname, email) VALUE('John','Doe','john@example.com')

        // Chuyển hướng đến trang
        return redirect()->route('admin.category.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //Lấy chi tiết
        $data = Category::findOrFail($id); // SELECT * FROM category WHERE id  = 5
        $list= Category::all(); // Lấy toàn bộ danh mục => build option danh mục cha
        return view('backend.category.edit', ['data' =>$data, 'list'=>$list]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $params = $request->all();

        $model = Category::findOrFail($id);   // Lấy ra đối tượng cần sử
        $model->name = $params['name'];
        $model->slug = str_slug($params['name']);// khi sử dụng str_slug thì đồng hồ -> dong-ho
        $model->parent_id = $params['parent_id'];
        $model->position = $params['position'];
        $model->is_active = isset($params['is_active']) ? $params['is_active'] : 0;

        // Upload file
        if ($request->hasFile('image')) { // dòng này Kiểm tra xem có image có được chọn
            // get file
            $file = $request->file('image');
            // đặt tên cho file image
            $filename = time().'_'.$file->getClientOriginalName(); // $file->getClientOriginalName() == tên ban đầu của image
            // Định nghĩa đường dẫn sẽ upload lên
            $path_upload = 'uploads/category/';
            // Thực hiện upload file
            $file->move($path_upload,$filename); // upload lên thư mục public/uploads/product

            $model->image = $path_upload.$filename;
        }

        $model->save();
        // Chuyển hướng đến trang
        return redirect()->route('admin.category.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Category::destroy($id); // DELETE FROM category WHERE id=15

        // chuyển hướng đến trang
        return redirect()->route('admin.category.index');
    }
}
