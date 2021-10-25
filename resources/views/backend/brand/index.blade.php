@extends('backend.layout.main')

@section('main-content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Quản Lý Thương Hiệu <a href="{{ route('admin.brand.create') }}" class="btn btn-info pull-right"><i class="fa fa-plus"></i> Thêm Thương Hiệu</a>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Danh Sách</h3>

                        <div class="box-tools">
                            <div class="input-group input-group-sm hidden-xs" style="width: 150px;">
                                <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                                <div class="input-group-btn">
                                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">
                            <tr>
                                <th>ID</th>
                                <th>Tên</th>
                                <th>Logo</th>
                                <th>Website</th>
                                <th>Vị trí</th>
                                <th>Trạng thái</th>
                                <th>Ngày tạo</th>
                                <th>Hành động</th>
                            </tr>
                            @foreach($data as $key => $row)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td>{{ $row->name }}</td>
                                    <td>
                                        <img width="80" src="{{ asset($row->image) }}" alt="">
                                    </td>
                                    <td>{{ $row->website }}</td>
                                    <td>{{ $row->position }}</td>
                                    <td>{{ ($row->is_active == 1) ? 'Hiển thị' : 'Ẩn' }}</td>
                                    <td>{{ $row->created_at }}</td>
                                    <td>
                                        <a href="{{ route('admin.brand.edit' , ['id' => $row->id ]) }}" class="btn btn-info">Sửa</a>

                                        <form style="display: inline-block;" action="{{ route('admin.brand.destroy', ['id' => $row->id ]) }}" method="POST">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger">Xóa</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
    </section>
    <!-- /.content -->
@endsection
