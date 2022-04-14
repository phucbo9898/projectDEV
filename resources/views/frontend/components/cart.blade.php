@if(count($cart) > 0)
    <!-- MAIN-CONTENT-SECTION START -->
    <section class="main-content-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <!-- SHOPPING-CART SUMMARY START -->
                    <h2 class="page-title">Thông tin giỏ hàng<span class="shop-pro-item">Your shopping cart contains: 2 products</span>
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
                                            <a data-id="{{ $item->rowId }}" href="javascript:void(0)" class="cart_quantity_delete" title="Delete">
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
                                        <div class="cart-plus-minus-button">
                                            <input class="cart-plus-minus" type="text" name="qtybutton" value="{{$item->qty}}">
                                        </div>
                                        <a data-id="{{ $item->rowId }}" href="javascript:void(0)" class="update-qty">Cập nhật</a>
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
                    <a href="/" class="btn btn-black py-2 px-2 " >Tiến tục mua hàng</a>
                    <a href="{{ route('shop.cart.order') }}#order" class="btn btn-warning py-2 px-2 "style="float: right">
                        <i class="icon-long-arrow-right"></i>Tiến Hành Đặt hàng
                    </a>
                </p>
            </div>
        </div>
    </section>
    <!-- MAIN-CONTENT-SECTION END -->

@section('my_javascript')
    <script type="text/javascript">
        $(function () {
            // xóa sản phẩm khỏi giỏ hàng
            $(document).on("click", '.remove-to-cart', function () {
                var result = confirm("Bạn có chắc chắn muốn xóa sản phẩm này khỏi giỏ hàng ?");

                if (result == true) {
                    var rowId = $(this).attr('data-id'); // 9a34a635a736b8ed53f234e3b7ad738e
                    $.ajax({
                        url: '/gio-hang/xoa-sp-gio-hang/' + rowId,
                        type: 'get',
                        data: {
                            id: rowId
                        }, // dữ liệu truyền sang nếu có
                        dataType: "HTML", // kiểu dữ liệu trả về
                        success: function (response) {
                            $('#my-cart').html(response);
                        }
                    });
                }
            });

            // cập nhật số lượng của từng sản phẩm trong giỏ hàng
            $(document).on("click", '.update-qty', function (e) {
                var rowId = $(this).attr('data-id'); // a9d4048ab5a0c0e0505f43a6834097f2

                var input = $(this) // <nút cập nhât >
                    .parent('.quantity') // cha <td class="quantity"
                    .find('.item-qty'); // <input name="qty"

                var so_luong = input.val(); // so lương


                // Kiểm tra Nếu không phải là số nguyên Hoặc số lượng < 1
                if (isNaN(so_luong) || so_luong < 1) {
                    alert("Số lượng là số nguyên lớn hơn >= 1");
                    return false;
                }

                $.ajax({
                    url: '/gio-hang/cap-nhat-so-luong-sp',
                    type: 'get',
                    data: {
                        rowId: rowId,
                        qty: so_luong
                    }, // dữ liệu truyền sang nếu có
                    dataType: "HTML", // kiểu dữ liệu trả về
                    success: function (response) {
                        if (response != false) {
                            $('#my-cart').html(response);
                        }
                    }
                });
            });
        })
    </script>
@endsection

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
    <a href="/" class="buyother"><i class="fa fa-chevron-left"></i> Về trang chủ</a>
@endif
