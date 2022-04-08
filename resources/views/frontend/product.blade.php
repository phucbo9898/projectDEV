@extends('frontend.layout.main')

@section('main-content')

    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <!-- BSTORE-BREADCRUMB START -->
            <div class="bstore-breadcrumb">
                <a href="{{ asset('frontend/index.html')}}">HOMe<span><i class="fa fa-caret-right"></i> </span> </a>
                <span> <i class="fa fa-caret-right"> </i> </span>
                <a href="{{ asset('frontend/shop-gird.html')}}"> women </a>
                <span> Faded Short Sleeves T-shirt </span>
            </div>
            <!-- BSTORE-BREADCRUMB END -->
        </div>
    </div>
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
                                    <a class="fancybox" href="{{ asset('frontend/img/product/sale/1.jpg')}}" data-fancybox-group="gallery"><span class="btn large-btn">View larger <i class="fa fa-search-plus"></i></span></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="thumbnail_2">
                                <div class="single-product-image">
                                    <img src="{{ asset('frontend/img/product/sale/3.jpg')}}" alt="single-product-image" />
                                    <a class="new-mark-box" href="{{ asset('frontend/#')}}">new</a>
                                    <a class="fancybox" href="{{ asset('frontend/img/product/sale/3.jpg')}}" data-fancybox-group="gallery"><span class="btn large-btn">View larger <i class="fa fa-search-plus"></i></span></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="thumbnail_3">
                                <div class="single-product-image">
                                    <img src="{{ asset('frontend/img/product/sale/9.jpg" alt="single-product-image')}}" />
                                    <a class="new-mark-box" href="{{ asset('frontend/#')}}">new</a>
                                    <a class="fancybox" href="{{ asset('frontend/img/product/sale/9.jpg')}}" data-fancybox-group="gallery"><span class="btn large-btn">View larger <i class="fa fa-search-plus"></i></span></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="thumbnail_4">
                                <div class="single-product-image">
                                    <img src="{{ asset('frontend/img/product/sale/13.jpg" alt="single-product-image')}}" />
                                    <a class="new-mark-box" href="{{ asset('frontend/#')}}">new</a>
                                    <a class="fancybox" href="{{ asset('frontend/img/product/sale/13.jpg')}}" data-fancybox-group="gallery"><span class="btn large-btn">View larger <i class="fa fa-search-plus"></i></span></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="thumbnail_5">
                                <div class="single-product-image">
                                    <img src="{{ asset('frontend/img/product/sale/7.jpg" alt="single-product-image')}}" />
                                    <a class="new-mark-box" href="{{ asset('frontend/#')}}">new</a>
                                    <a class="fancybox" href="{{ asset('frontend/img/product/sale/7.jpg')}}" data-fancybox-group="gallery"><span class="btn large-btn">View larger <i class="fa fa-search-plus"></i></span></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="thumbnail_6">
                                <div class="single-product-image">
                                    <img src="{{ asset('frontend/img/product/sale/12.jpg" alt="single-product-image')}}" />
                                    <a class="new-mark-box" href="{{ asset('frontend/#')}}">new</a>
                                    <a class="fancybox" href="{{ asset('frontend/img/product/sale/12.jpg')}}" data-fancybox-group="gallery"><span class="btn large-btn">View larger <i class="fa fa-search-plus"></i></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="select-product">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs select-product-tab bxslider">
                            <li class="active">
                                <a href="{{ asset('frontend/#thumbnail_1')}}" data-toggle="tab"><img src="{{ asset('frontend/img/product/sidebar_product/1.jpg')}}" alt="pro-thumbnail" /></a>
                            </li>
                            <li>
                                <a href="{{ asset('frontend/#thumbnail_2')}}" data-toggle="tab"><img src="{{ asset('frontend/img/product/sidebar_product/2.jpg')}}" alt="pro-thumbnail" /></a>
                            </li>
                            <li>
                                <a href="{{ asset('frontend/#thumbnail_3')}}" data-toggle="tab"><img src="{{ asset('frontend/img/product/sidebar_product/3.jpg')}}" alt="pro-thumbnail" /></a>
                            </li>
                            <li>
                                <a href="{{ asset('frontend/#thumbnail_4')}}" data-toggle="tab"><img src="{{ asset('frontend/img/product/sidebar_product/4.jpg')}}" alt="pro-thumbnail" /></a>
                            </li>
                            <li>
                                <a href="{{ asset('frontend/#thumbnail_5')}}" data-toggle="tab"><img src="{{ asset('frontend/img/product/sidebar_product/5.jpg')}}" alt="pro-thumbnail" /></a>
                            </li>
                            <li>
                                <a href="{{ asset('frontend/#thumbnail_6')}}" data-toggle="tab"><img src="{{ asset('frontend/img/product/sidebar_product/6.jpg')}}" alt="pro-thumbnail" /></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-7 col-md-7 col-sm-8 col-xs-12">
                    <div class="single-product-descirption">
                        <h2>{{ $product->name }}</h2>
                        <div class="single-product-price">
                            <h2>{{ number_format($product->sale,0,",",".") }} ₫ </h2>
                        </div>

                        @if($product->stock > 0)
                            <div class="single-product-desc">
                                <div class="product-in-stock">
                                    <p><span>Còn hàng</span></p>
                                </div>
                            </div>
                        @endif

                        <div class="single-product-quantity">
                            <p class="small-title">Số lượng</p>
                            <div class="cart-quantity">
                                <div class="cart-plus-minus-button single-qty-btn">
                                    <input class="cart-plus-minus sing-pro-qty" type="text" name="qtybutton" value="0">
                                </div>
                            </div>
                        </div>

                        <div class="single-product-color">
                            <p class="small-title">Color </p>
                            <a href="{{ asset('frontend/#')}}"><span></span></a>
                            <a class="color-blue" href="{{ asset('frontend/#')}}"><span></span></a>
                        </div>
                        <div class="single-product-add-cart">
                            <a class="add-cart-text" title="Add to cart" href="{{ asset('frontend/#')}}">Đặt hàng</a>
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
            <!-- SINGLE SIDE BAR START -->

            <!-- SINGLE SIDE BAR END -->
            <!-- SINGLE SIDE BAR START -->

        </div>
        <!-- SINGLE SIDE BAR END -->
    </div>
@endsection
