@extends('backend.layout.main')

@section('main-content')
    <section class="content-header">
        <h1>
            Danh Sách Tin Tức <a href="{{route('admin.article.create')}}" class="btn btn-info pull-right"><i class="fa fa-plus"></i> Thêm Tin Tức</a>
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
                                <th>ID</th>
                                <th>Tiêu đề</th>
                                <th>Hình ảnh</th>
                                <th>Url</th>
                                <th>Vị trí</th>
                                <th>Trạng thái</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                            </tbody>
                            <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                            @foreach($data as $key => $item)
                                    <tr class="item-{{ $item->id }}"> <!-- Thêm Class Cho Dòng -->
                                        <td>{{ $key + 1 }}</td>
                                        <td>{{ $item->title }}</td>
                                        <td>
                                            @if ($item->image) <!-- Kiểm tra hình ảnh tồn tại -->
                                                <img src="{{asset($item->image)}}" width="150" >
                                                @endif
                                        </td>
                                        <td>{{ $item->url == 1 }}</td>
                                        <td>{{ $item->position }}</td>
                                        <td>{{ ($item->is_active == 1) ? 'Hiển thị' : 'Ẩn' }}</td>
                                        <td class="text-center">
                                            <a href="{{ route('admin.article.edit', ['id'=> $item->id]) }}" class="btn btn-info">Sửa</a>
                                            {{--Chức năng xóa ( phải có chống bảo mật @csrf và @method('DELETE')--}}
                                            <form style="display: inline-block;" action="{{ route('admin.article.destroy', ['id' => $item->id ]) }}" method="POST">
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
