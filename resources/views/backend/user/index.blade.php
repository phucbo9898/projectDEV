@extends('backend.layout.main')

@section('main-content')
    <section class="content-header">
        <h1>
            Danh Sách Người Dùng <a href="{{route('admin.user.create')}}" class="btn btn-info pull-right"><i class="fa fa-plus"></i> Thêm User</a>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <div class="box-tools">
                            <div class="input-group input-group-sm hidden-xs" style="width: 150px;">
                                <input type="text" name="table_search" class="form-control pull-right"
                                       placeholder="Search">

                                <div class="input-group-btn">
                                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <th>Họ & Tên</th>
                                <th>Email</th>
                                <th>Hình ảnh</th>
                                <th>Phân Quyền</th>
                                <th>Trạng thái</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                            </tbody>
                            <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                            @foreach($data as $key => $item)
                                <tr class="">
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->email }}</td>
                                    <td>
                                    @if ($item->avatar) <!-- Kiểm tra hình ảnh tồn tại -->
                                        <img src="{{asset($item->avatar)}}" width="70">
                                        @endif
                                    </td>
                                    <td>
                                        @if($item->role_id == 1)
                                            Manager
                                        @elseif($item->role_id == 2)
                                            Administrator
                                        @else
                                            Guest
                                        @endif
                                    </td>
                                    <td>{{ ($item->is_active == 1) ? 'Kích hoạt' : 'Chưa kích hoạt' }}</td>
                                    <td class="text-center">
                                        <a href="{{route('admin.user.edit', ['id'=> $item->id])}}" class="btn btn-info">Sửa</a>

                                        <form style="display: inline-block;" action="{{ route('admin.user.destroy', ['id' => $item->id ]) }}" method="POST">
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
        <!-- /.row -->
    </section>
@endsection
