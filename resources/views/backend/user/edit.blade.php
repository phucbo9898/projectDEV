@extends('backend.layout.main')

@section('main-content')
    <section class="content-header">
        <h1>
            Sửa thông tin người dùng <a href="{{route('admin.user.index')}}" class="btn btn-success"><i class="fa fa-list"></i> Danh Sách User</a>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-6">
                <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Thông tin người dùng</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="{{route('admin.user.update', ['id' => $user->id ] )}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="box-body">
                            <div class="form-group">
                                <label>Chọn Quyền</label>
                                <select class="form-control" name="role_id">
                                    <option value="1" {{ ($user->role_id == 1) ? 'selected' : '' }}>Manager</option>
                                    <option value="2" {{ ($user->role_id == 2) ? 'selected' : '' }}>Administrator</option>
                                    <option value="3" {{ ($user->role_id == 3) ? 'selected' : '' }}>Guest</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Họ Tên</label>
                                <input value="{{ $user->name }}" type="text" class="form-control" id="name" name="name" placeholder="Nhập họ & tên">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <input value="{{ $user->email }}" type="text" class="form-control" id="email" name="email" placeholder="Nhập Email">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1" style="color: #9c3328">** Mật khẩu mới</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu mới">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile" style="color: #9c3328">** Thay đổi ảnh đại diện</label>
                                <input type="file" id="avatar" name="avatar">
                                <br>
                                <img src="{{ asset($user->avatar) }}" width="250">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="1" name="is_active" {{ ($user->is_active == 1) ? 'checked' : '' }}> Kích hoạt tài khoản
                                </label>
                            </div>
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Cập nhật</button>
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
