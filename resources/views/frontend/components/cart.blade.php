@if(count($cart) > 0)
    <!-- MAIN-CONTENT-SECTION START -->
    <section class="main-content-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin: 10px 10px;">
                    <!-- SHOPPING-CART SUMMARY START -->
                    <h2 class="page-title" style="font-size: 20px;"> Thông tin giỏ hàng<span class="shop-pro-item"></span>
                    </h2>
                    <!-- SHOPPING-CART SUMMARY END -->
                </div>

                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <!-- CART TABLE_BLOCK START -->
                    <div class="table-responsive">
                        <!-- TABLE START -->
                        <table class="table table-bordered" id="cart-summary">
                            <!-- TABLE HEADER START -->
                            <thead>
                                <tr>
                                    <th class="cart-delete">&nbsp;</th>
                                    <th class="cart-product">Ảnh</th>
                                    <th class="cart-description">Thông tin sản phẩm</th>
                                    <th class="cart-avail text-center">Giá</th>
                                    <th class="cart-unit text-right">Số lượng</th>
                                    <th class="cart_quantity text-center">Tổng cộng</th>
                                </tr>
                            </thead>
                            <!-- TABLE HEADER END -->
                            <!-- TABLE BODY START -->
                            <tbody>
                            @foreach($cart as $item)
                            <!-- SINGLE CART_ITEM START -->
                                <tr>
                                    <td class="cart-delete text-center">
                                        <span>
                                            <a data-id="{{ $item->rowId }}" href="{{route('shop.cart.remove-to-cart', $item->rowId) }}" class="cart_quantity_delete" title="Delete">
                                                <i class="fa fa-trash-o"></i></a>
                                        </span>
                                    </td>
                                    <td class="cart-product">
                                        <img height="50px" width="50px" alt="" src="{{asset($item->options->image)}}">
                                    </td>
                                    <td class="cart-description">
                                        <h3>{{$item->name}}</h3>
                                    </td>
                                    <td class="cart-unit">
                                        <ul class="price text-right">
                                            <li class="price">{{ number_format($item->price, 0, ",",".") }}đ</li>
                                        </ul>
                                    </td>
                                    <td class="cart_quantity text-center">
                                        <form action="{{route('shop.cart.update-to-cart', $item->rowId)}}" method="post">
                                            @csrf
                                            <input type="number" class="cart-plus-minus" name="updateToCart" value="{{$item->qty}}" min="1">
                                            <button type="submit" class="btn">Cập nhật</button>
                                        </form>
                                    </td>
                                    <td class="cart-total">
                                        {{ number_format($item->qty * $item->price ,0,",",".") }}đ
                                    </td>
                                </tr>
                            @endforeach
                            <!--Tính tổng-->
                            <tr class="">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>Thành tiền:</td>
                                <td class="total font-weight-bold">{{$totalPrice}}</td>
                            </tr>
                        </table>
                        <!-- TABLE END -->
                    </div>
                    <!-- CART TABLE_BLOCK END -->
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px">
            <div class="col-md-12">
                <p>
                    <a href="{{ route('shop.cart.destroy') }}" class="btn btn-danger py-2 px-2 m-l-2">
                        <i class="icon-remove"></i> Hủy Đơn Hàng
                    </a>
                    <a href="{{ route('shop.home')}}" class="btn btn-black py-2 px-2 " >Tiến tục mua hàng</a>
                    <a href="{{ route('shop.cart.order') }}" class="btn btn-warning py-2 px-2 "style="float: right">
                        <i class="icon-long-arrow-right"></i>Tiến Hành Đặt hàng
                    </a>
                </p>
            </div>
        </div>
    </section>
    <!-- MAIN-CONTENT-SECTION END -->

@else
    <style>
        .buyother {
            display: block;
            overflow: hidden;
            background: #fff;
            line-height: 40px;
            text-align: center;
            margin: 15px auto;
            width: 300px;
            font-size: 14px;
            color: #82ae46;
            font-weight: 700;
            text-transform: uppercase;
            border: 2px solid #82ae46;
            border-radius: 5px;
        }
    </style><br>
    <h3 class="text-center"><i class="fa fa-opencart"></i>Bạn chưa có sản phẩm nào trong giỏ hàng</h3>
    <a href="{{ route('shop.home') }}" class="buyother"><i class="fa fa-chevron-left"></i> Về trang chủ</a>
@endif
