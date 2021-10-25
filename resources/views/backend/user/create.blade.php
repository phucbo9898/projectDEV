@extends('backend.layout.main')

@section('main-content')
    <section class="content-header">
        <h1>
            Thêm người dùng <a href="{{route('admin.user.index')}}" class="btn btn-success "><i
                    class="fa fa-list"></i> Danh Sách User</a>
        </h1>
    </section>

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
                        <h3 class="box-title">Thông tin người dùng</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="{{route('admin.user.store')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="box-body">
                            <div class="form-group">
                                <label>Chọn Quyền</label>
                                <select class="form-control" name="role_id">
                                    <option value="" >Chọn</option>
                                    <option value="1" >Manager</option>
                                    <option value="2">Administrator</option>
                                    <option value="3">Guest</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Họ Tên</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Nhập họ & tên">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <input type="text" class="form-control" id="email" name="email" placeholder="Nhập Email">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Mật khẩu</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Nhập password">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Avatar</label>
                                <input type="file" id="avatar" name="avatar">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="1" name="is_active"> Kích hoạt tài khoản
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
            <!--/.col (right) -->
        </div>
        <!-- /.row -->
    </section>
@endsection
