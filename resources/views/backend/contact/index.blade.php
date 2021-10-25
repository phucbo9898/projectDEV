@extends('backend.layout.main')

@section('main-content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Quản Lý Liên Hệ
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
                                <th>TT</th>
                                <th>Tên</th>
                                <th>Số điện thoại</th>
                                <th>Email</th>
                                <th>Nội dung</th>
                                <th>Hành động</th>
                            </tr>
                            @if(!empty($data))
                                @foreach($data as $key => $row)
                                    <tr>
                                        <td>{{ $key + 1 }}</td>
                                        <td>{{ $row->name }}</td>
                                        <td>{{ $row->phone }}</td>
                                        <td>{{ $row->email }}</td>
                                        <td>{{ $row->content }}</td>
                                        <td>
                                            {{--Chức năng xóa ( phải có chống bảo mật @csrf và @method('DELETE')--}}
                                            <form style="display: inline-block;" action="{{ route('admin.contact.destroy', ['id' => $row->id ]) }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger">Xóa</button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                            @endif
                        </table>
                    </div>
                    <!-- /.box-body -->
                    <!-- /.box-body -->
{{--                    Tạo phân trang --}}
                    <div class="box-footer clearfix">
                        {{ $data->links() }}
                    </div>
                </div>
                <!-- /.box -->
            </div>
        </div>
    </section>
    <!-- /.content -->
@endsection
