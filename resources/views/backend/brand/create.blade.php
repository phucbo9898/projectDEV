@extends('backend.layout.main')

@section('main-content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Thêm Thương Hiệu <a href="{{route('admin.brand.index')}}" class="btn btn-success "><i
                    class="fa fa-list"></i> Danh Sách Thương Hiệu</a>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-6">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="col-md-12">
                    @if ($errors->any()) <!-- kiểm tra có bất kỳ lỗi nào -->
                        <div class="alert alert-danger alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <h4><i class="icon fa fa-ban"></i> Lỗi !</h4>
                            @foreach ($errors->all() as $error)
                                <p>{{ $error }}</p>
                            @endforeach
                        </div>
                    @endif
                    </div>
                    <div class="box-header with-border">
                        <h3 class="box-title">Thông tin</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" method="post" action="{{ route('admin.brand.store') }}"
                          enctype="multipart/form-data">
                        @csrf
                        <div class="box-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên</label>
                                <input name="name" type="text" class="form-control" id="exampleInputEmail1"
                                       placeholder="Nhập tên thương hiệu">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputFile">Logo</label>
                                <input name="image" type="file" id="exampleInputFile">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Website công ty</label>
                                <input name="website" type="text" class="form-control" id="exampleInputEmail1"
                                       placeholder="Nhập tên website">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Vị trí</label>
                                <input name="position" type="number" class="form-control" id="exampleInputEmail1"
                                       min="1" value="1">
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="is_active" value="1"> Hiển thị
                                </label>
                            </div>
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Tạo</button>
                        </div>
                    </form>
                </div>
                <!-- /.box -->
            </div>
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
@endsection
