@extends('frontend.layout.main')

@section('main-content')

    <div id="order">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    @if(!session('msg'))
                        <div class="col-xl-7 ftco-animate" style="margin: 10px 10px;">
                            <form action="{{ route('shop.cart.postOrder') }}" class="billing-form" method="post">
                                @csrf
                                <h2 class="mb-4 billing-heading" style="font-size: 20px; margin: 20px 10px"><b>Thông tin đặt hàng</b></h2>
                                <div class="row align-items-end">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="firstname">Họ và tên</label>
                                            <input name="fullname" type="text" class="form-control" placeholder="">
                                            @if ($errors->has('fullname'))
                                                <span class="invalid-feedback" role="alert" style="color:red;">{{ $errors->first('fullname') }}</span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="phone">Điện thoại</label>
                                            <input name="phone" type="text" class="form-control" placeholder="Nhập số điện thoại">
                                            @if ($errors->has('phone'))
                                                <span class="invalid-feedback" role="alert" style="color:red;">{{ $errors->first('phone') }}</span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input name="email" type="text" class="form-control" placeholder="Nhập email của bạn">
                                            @if ($errors->has('email'))
                                                <span class="invalid-feedback" role="alert" style="color:red;">{{ $errors->first('email') }}</span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="towncity">Địa chỉ nhận hàng</label>
                                            <input type="text" class="form-control" placeholder="" name="address">
                                            @if ($errors->has('address'))
                                                <span class="invalid-feedback" role="alert" style="color:red;">{{ $errors->first('address') }}</span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="phone">Ghi chú</label>
                                            <input type="text" class="form-control" placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="cart-detail p-3 p-md-4">
                                            <p><button type="submit" class="btn btn-primary py-3 px-4">Đặt Hàng</button></p>
                                        </div>
                                    </div>
                                </div>
                            </form><!-- END -->
                        </div>
                    @else
                        {{ session('msg') ? session('msg') : '' }}
                    @endif
                </div>
            </div>
        </section>
    </div>
@endsection


