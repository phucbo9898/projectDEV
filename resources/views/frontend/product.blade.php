@extends('frontend.layout.main')

@section('main-content')
    <br>
    <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
            <!-- SINGLE-PRODUCT-DESCRIPTION START -->
            <div class="row">
                <div class="col-lg-5 col-md-5 col-sm-4 col-xs-12">
                    <div class="single-product-view">
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="thumbnail_1">
                                <div class="single-product-image">
                                    <img src="{{ asset($product->image) }}" alt="single-product-image" />
                                    <a class="new-mark-box" href="{{ asset('frontend/#')}}">new</a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-lg-7 col-md-7 col-sm-8 col-xs-12">
                    <div class="single-product-descirption">
                        <h2>{{ $product->name }}</h2>
                        <div class="single-product-price">
                            <h2>{{ number_format($product->sale,0,",",".") }} ₫ </h2>
                        </div>

                        <div class="col-md-12" style="display: flex">
                            <h3><b>Tình trạng:</b></h3>
                            @if($product->stock > 0)
                                <h3 style="color: #82ae46; margin-top: 1px">&emsp;<b>CÒN HÀNG</b></h3>
                            @else
                                <h3 style="color: red; margin-top: 1px">&emsp;<b>HẾT HÀNG</b></h3>
                            @endif
                        </div>
{{--                        @if($product->stock > 0)--}}
{{--                            <div class="single-product-desc">--}}
{{--                                <div class="product-in-stock">--}}
{{--                                    <p><span>Còn hàng</span></p>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        @endif--}}

                        <div class="single-product-quantity">
                            <p class="small-title">Số lượng</p>
                            <div class="cart-quantity">
                                <div class="cart-plus-minus-button single-qty-btn">
                                    <input class="cart-plus-minus sing-pro-qty" type="text" name="qtybutton" value="0">
                                </div>
                            </div>
                        </div>

                        <div class="single-product-add-cart">
                            <a  class="add-cart-text" title="Thêm sản phẩm vào giỏ hàng" href="{{ route('shop.cart.add-to-cart',
                                                                                                ['id'=> $product->id])}}">
                                Thêm vào giỏ hàng
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- SINGLE-PRODUCT-DESCRIPTION END -->
            <!-- SINGLE-PRODUCT INFO TAB START -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="product-more-info-tab">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs more-info-tab">
                            <li class="active"><a href="{{ asset('frontend/#moreinfo" data-toggle="tab')}}">Thông số kỹ thuật</a></li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="moreinfo">
                                <div class="tab-description">
                                    {!! $product->description !!}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- SINGLE-PRODUCT INFO TAB END -->
            <!-- RELATED-PRODUCTS-AREA START -->

            <!-- RELATED-PRODUCTS-AREA END -->
        </div>
        <!-- RIGHT SIDE BAR START -->
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
            <!-- SINGLE SIDE BAR START -->
            <div class="single-product-right-sidebar">
                <h2 class="left-title">Sản Phẩm Đã Xem</h2>
                <ul>
                    @foreach($viewedProducts as $product)
                        <li>
                            <a href="{{ route('shop.product',['slug' => $product->slug]) }}"><img src="{{ asset($product->image) }}" alt="" width="100" style="border: 0px" /></a>
                            <div class="r-sidebar-pro-content">
                                <h5><a href="{{ route('shop.product',['slug' => $product->slug]) }}">{{ $product->name }}</a></h5>
                                <p>{{ number_format($product->sale,0,",",".") }} ₫ </p>
                            </div>
                        </li>
                    @endforeach
                </ul>
            </div>
            <!-- SINGLE SIDE BAR END -->
        </div>
        <!-- SINGLE SIDE BAR END -->
    </div>
@endsection
