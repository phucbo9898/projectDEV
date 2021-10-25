<?php

namespace App\Http\Controllers;

use App\Banner;
use Illuminate\Http\Request;

class BannerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= Banner::all();
        return view('backend.banner.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.banner.create');
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
            'title' => 'required|max:255',
        ],[
            'title.required' => 'Nhập tên banner',
        ]);

        $params = $request->all();
        //Khởi tạo Model và gán giá trị từ form cho những thuộc tính của đối tượng (cột trong CSDL)
        $banner = new Banner();
        $banner->title = $request->input('title');
        $banner->slug = str_slug($request->input('title')); // slug

        if ($request->hasFile('image')) { // dòng này Kiểm tra xem có image có được chọn
            // get file
            $file = $request->file('image');
            // đặt tên cho file image
            $filename = time().'_'.$file->getClientOriginalName();
            // Định nghĩa đường dẫn sẽ upload lên
            $path_upload = 'uploads/banner/';
            // Thực hiện upload file
            $file->move($path_upload,$filename);
            // lưu lại đường đẫn file ảnh
            $banner->image = $path_upload.$filename;
        }

        // Url
        $banner->url = $request->input('url');
        // Target
        $banner->target = $request->input('target');
        // Loại
        $banner->type = $request->input('type');
        // Trạng thái
        $banner->is_active = isset($params['is_active']) ? $params['is_active'] : 0;
//        if ($request->has('is_active')){//kiem tra is_active co ton tai khong?
//            $banner->is_active = $request->input('is_active');
//        }
        // Vị trí
        $banner->position = $request->input('position');
        // Mô tả
        $banner->description = $request->input('description');
        // Lưu
        $banner->save();

        // Chuyển hướng trang về trang danh sách
        return redirect()->route('admin.banner.index');
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
        $banner = Banner::findOrFail($id);   // Lấy chi tiết banner
        return view('backend.banner.edit', ['banner' => $banner]);
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
        //Khởi tạo Model và gán giá trị từ form cho những thuộc tính của đối tượng (cột trong CSDL)
        $banner = Banner::findOrFail($id);
        $banner->title = $request->input('title');
        $banner->slug = str_slug($request->input('title')); // slug

        if ($request->hasFile('image')) { // dòng này Kiểm tra xem có image có được chọn
            // get file
            $file = $request->file('image');
            // đặt tên cho file image
            $filename = time().'_'.$file->getClientOriginalName();
            // Định nghĩa đường dẫn sẽ upload lên
            $path_upload = 'uploads/banner/';
            // Thực hiện upload file
            $file->move($path_upload,$filename);
            // lưu lại đường đẫn file ảnh
            $banner->image = $path_upload.$filename;
        }

        // Url
        $banner->url = $request->input('url');
        // Target
        $banner->target = $request->input('target');
        // Loại
        $banner->type = $request->input('type');
        // Trạng thái
        $banner->is_active = isset($params['is_active']) ? $params['is_active'] : 0;
//        if ($request->has('is_active')){//kiem tra is_active co ton tai khong?
//            $banner->is_active = $request->input('is_active');
//        }
        // Vị trí
        $banner->position = $request->input('position');
        // Mô tả
        $banner->description = $request->input('description');
        // Lưu
        $banner->save();

        // Chuyển hướng trang về trang danh sách
        return redirect()->route('admin.banner.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Banner::destroy($id); // DELETE FROM banner WHERE id=15

        // chuyển hướng đến trang
        return redirect()->route('admin.banner.index');
    }
}
