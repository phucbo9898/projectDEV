@extends('frontend.layout.main')

@section('main-content')

    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <!-- BSTORE-BREADCRUMB START -->
            <div class="bstore-breadcrumb">
                <a href="/frontend/index.html">HOMe<span><i class="fa fa-caret-right"></i> </span> </a>
                <span> <i class="fa fa-caret-right"> </i> </span>
                <a href="/frontend/shop-gird.html"> women </a>
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
                                    <a class="new-mark-box" href="/frontend/#">new</a>
                                    <a class="fancybox" href="/frontend/img/product/sale/1.jpg" data-fancybox-group="gallery"><span class="btn large-btn">View larger <i class="fa fa-search-plus"></i></span></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="thumbnail_2">
                                <div class="single-product-image">
                                    <img src="/frontend/img/product/sale/3.jpg" alt="single-product-image" />
                                    <a class="new-mark-box" href="/frontend/#">new</a>
                                    <a class="fancybox" href="/frontend/img/product/sale/3.jpg" data-fancybox-group="gallery"><span class="btn large-btn">View larger <i class="fa fa-search-plus"></i></span></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="thumbnail_3">
                                <div class="single-product-image">
                                    <img src="/frontend/img/product/sale/9.jpg" alt="single-product-image" />
                                    <a class="new-mark-box" href="/frontend/#">new</a>
                                    <a class="fancybox" href="/frontend/img/product/sale/9.jpg" data-fancybox-group="gallery"><span class="btn large-btn">View larger <i class="fa fa-search-plus"></i></span></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="thumbnail_4">
                                <div class="single-product-image">
                                    <img src="/frontend/img/product/sale/13.jpg" alt="single-product-image" />
                                    <a class="new-mark-box" href="/frontend/#">new</a>
                                    <a class="fancybox" href="/frontend/img/product/sale/13.jpg" data-fancybox-group="gallery"><span class="btn large-btn">View larger <i class="fa fa-search-plus"></i></span></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="thumbnail_5">
                                <div class="single-product-image">
                                    <img src="/frontend/img/product/sale/7.jpg" alt="single-product-image" />
                                    <a class="new-mark-box" href="/frontend/#">new</a>
                                    <a class="fancybox" href="/frontend/img/product/sale/7.jpg" data-fancybox-group="gallery"><span class="btn large-btn">View larger <i class="fa fa-search-plus"></i></span></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="thumbnail_6">
                                <div class="single-product-image">
                                    <img src="/frontend/img/product/sale/12.jpg" alt="single-product-image" />
                                    <a class="new-mark-box" href="/frontend/#">new</a>
                                    <a class="fancybox" href="/frontend/img/product/sale/12.jpg" data-fancybox-group="gallery"><span class="btn large-btn">View larger <i class="fa fa-search-plus"></i></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="select-product">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs select-product-tab bxslider">
                            <li class="active">
                                <a href="/frontend/#thumbnail_1" data-toggle="tab"><img src="/frontend/img/product/sidebar_product/1.jpg" alt="pro-thumbnail" /></a>
                            </li>
                            <li>
                                <a href="/frontend/#thumbnail_2" data-toggle="tab"><img src="/frontend/img/product/sidebar_product/2.jpg" alt="pro-thumbnail" /></a>
                            </li>
                            <li>
                                <a href="/frontend/#thumbnail_3" data-toggle="tab"><img src="/frontend/img/product/sidebar_product/3.jpg" alt="pro-thumbnail" /></a>
                            </li>
                            <li>
                                <a href="/frontend/#thumbnail_4" data-toggle="tab"><img src="/frontend/img/product/sidebar_product/4.jpg" alt="pro-thumbnail" /></a>
                            </li>
                            <li>
                                <a href="/frontend/#thumbnail_5" data-toggle="tab"><img src="/frontend/img/product/sidebar_product/5.jpg" alt="pro-thumbnail" /></a>
                            </li>
                            <li>
                                <a href="/frontend/#thumbnail_6" data-toggle="tab"><img src="/frontend/img/product/sidebar_product/6.jpg" alt="pro-thumbnail" /></a>
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
                            <p class="small-title">Quantity</p>
                            <div class="cart-quantity">
                                <div class="cart-plus-minus-button single-qty-btn">
                                    <input class="cart-plus-minus sing-pro-qty" type="text" name="qtybutton" value="0">
                                </div>
                            </div>
                        </div>
                        <div class="single-product-size">
                            <p class="small-title">Size </p>
                            <select name="product-size" id="product-size">
                                <option value="">S</option>
                                <option value="">M</option>
                                <option value="">L</option>
                            </select>
                        </div>
                        <div class="single-product-color">
                            <p class="small-title">Color </p>
                            <a href="/frontend/#"><span></span></a>
                            <a class="color-blue" href="/frontend/#"><span></span></a>
                        </div>
                        <div class="single-product-add-cart">
                            <a class="add-cart-text" title="Add to cart" href="/frontend/#">Add to cart</a>
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
                            <li class="active"><a href="/frontend/#moreinfo" data-toggle="tab">Thông số kỹ thuật</a></li>
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
            <div class="row">
                <div class="col-sm-12">
                    <div class="left-title-area">
                        <h2 class="left-title">related products</h2>
                    </div>
                </div>
                <div class="related-product-area featured-products-area">
                    <div class="col-sm-12">
                        <div class=" row">
                            <!-- RELATED-CAROUSEL START -->
                            <div class="related-product">
                                <!-- SINGLE-PRODUCT-ITEM START -->
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="/frontend/#"><img src="/frontend/img/product/sale/3.jpg" alt="product-image" /></a>
                                        </div>
                                        <div class="product-info">
                                            <div class="customar-comments-box">
                                                <div class="rating-box">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-empty"></i>
                                                </div>
                                                <div class="review-box">
                                                    <span>1 Review(s)</span>
                                                </div>
                                            </div>
                                            <a href="/frontend/#">Faded Short T-sh...</a>
                                            <div class="price-box">
                                                <span class="price">$16.51</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SINGLE-PRODUCT-ITEM END -->
                                <!-- SINGLE-PRODUCT-ITEM START -->
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="/frontend/#"><img src="/frontend/img/product/sale/1.jpg" alt="product-image" /></a>
                                        </div>
                                        <div class="product-info">
                                            <div class="customar-comments-box">
                                                <div class="rating-box">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="review-box">
                                                    <span>1 Review(s)</span>
                                                </div>
                                            </div>
                                            <a href="/frontend/#">Blouse</a>
                                            <div class="price-box">
                                                <span class="price">$22.95</span>
                                                <span class="old-price">$27.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SINGLE-PRODUCT-ITEM END -->
                                <!-- SINGLE-PRODUCT-ITEM START -->
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="/frontend/#"><img src="/frontend/img/product/sale/9.jpg" alt="product-image" /></a>
                                        </div>
                                        <div class="product-info">
                                            <div class="customar-comments-box">
                                                <div class="rating-box">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-empty"></i>
                                                    <i class="fa fa-star-half-empty"></i>
                                                </div>
                                                <div class="review-box">
                                                    <span>1 Review(s)</span>
                                                </div>
                                            </div>
                                            <a href="/frontend/#">Printed Dress</a>
                                            <div class="price-box">
                                                <span class="price">$23.40</span>
                                                <span class="old-price">$26.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SINGLE-PRODUCT-ITEM END -->
                                <!-- SINGLE-PRODUCT-ITEM START -->
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="/frontend/#"><img src="/frontend/img/product/sale/5.jpg" alt="product-image" /></a>
                                            <div class="overlay-content">
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <div class="customar-comments-box">
                                                <div class="rating-box">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-empty"></i>
                                                </div>
                                                <div class="review-box">
                                                    <span>1 Review(s)</span>
                                                </div>
                                            </div>
                                            <a href="/frontend/#">Printed Dress</a>
                                            <div class="price-box">
                                                <span class="price">$50.99</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SINGLE-PRODUCT-ITEM END -->
                                <!-- SINGLE-PRODUCT-ITEM START -->
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="/frontend/#"><img src="/frontend/img/product/sale/12.jpg" alt="product-image" /></a>
                                        </div>
                                        <div class="product-info">
                                            <div class="customar-comments-box">
                                                <div class="rating-box">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-empty"></i>
                                                    <i class="fa fa-star-half-empty"></i>
                                                </div>
                                                <div class="review-box">
                                                    <span>1 Review(s)</span>
                                                </div>
                                            </div>
                                            <a href="/frontend/#">Printed Summer Dr...</a>
                                            <div class="price-box">
                                                <span class="price">$28.98</span>
                                                <span class="old-price">$30.51</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SINGLE-PRODUCT-ITEM END -->
                                <!-- SINGLE-PRODUCT-ITEM START -->
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="/frontend/#"><img src="/frontend/img/product/sale/13.jpg" alt="product-image" /></a>
                                        </div>
                                        <div class="product-info">
                                            <div class="customar-comments-box">
                                                <div class="rating-box">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="review-box">
                                                    <span>1 Review(s)</span>
                                                </div>
                                            </div>
                                            <a href="/frontend/#">Printed Summer</a>
                                            <div class="price-box">
                                                <span class="price">$30.50</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SINGLE-PRODUCT-ITEM END -->
                                <!-- SINGLE-PRODUCT-ITEM START -->
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="/frontend/#"><img src="/frontend/img/product/sale/7.jpg" alt="product-image" /></a>
                                        </div>
                                        <div class="product-info">
                                            <div class="customar-comments-box">
                                                <div class="rating-box">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-empty"></i>
                                                    <i class="fa fa-star-half-empty"></i>
                                                </div>
                                                <div class="review-box">
                                                    <span>1 Review(s)</span>
                                                </div>
                                            </div>
                                            <a href="/frontend/#">Printed Chiffon Dr...</a>
                                            <div class="price-box">
                                                <span class="price">$16.40</span>
                                                <span class="old-price">$20.50</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SINGLE-PRODUCT-ITEM END -->
                                <!-- SINGLE-PRODUCT-ITEM START -->
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="/frontend/#"><img src="/frontend/img/product/sale/11.jpg" alt="product-image" /></a>
                                        </div>
                                        <div class="product-info">
                                            <div class="customar-comments-box">
                                                <div class="rating-box">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="review-box">
                                                    <span>1 Review(s)</span>
                                                </div>
                                            </div>
                                            <a href="/frontend/#">Printed Dress</a>
                                            <div class="price-box">
                                                <span class="price">$26.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SINGLE-PRODUCT-ITEM END -->
                                <!-- SINGLE-PRODUCT-ITEM START -->
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="/frontend/#"><img src="/frontend/img/product/sale/10.jpg" alt="product-image" /></a>
                                        </div>
                                        <div class="product-info">
                                            <div class="customar-comments-box">
                                                <div class="rating-box">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-empty"></i>
                                                    <i class="fa fa-star-half-empty"></i>
                                                </div>
                                                <div class="review-box">
                                                    <span>1 Review(s)</span>
                                                </div>
                                            </div>
                                            <a href="/frontend/#">Printed Dress</a>
                                            <div class="price-box">
                                                <span class="price">$26.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SINGLE-PRODUCT-ITEM END -->
                                <!-- SINGLE-PRODUCT-ITEM START -->
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="/frontend/#"><img src="/frontend/img/product/sale/2.jpg" alt="product-image" /></a>
                                        </div>
                                        <div class="product-info">
                                            <div class="customar-comments-box">
                                                <div class="rating-box">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="review-box">
                                                    <span>1 Review(s)</span>
                                                </div>
                                            </div>
                                            <a href="/frontend/#">Blouse</a>
                                            <div class="price-box">
                                                <span class="price">$27.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SINGLE-PRODUCT-ITEM END -->
                                <!-- SINGLE-PRODUCT-ITEM START -->
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="/frontend/#"><img src="/frontend/img/product/sale/4.jpg" alt="product-image" /></a>
                                        </div>
                                        <div class="product-info">
                                            <div class="customar-comments-box">
                                                <div class="rating-box">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-empty"></i>
                                                </div>
                                                <div class="review-box">
                                                    <span>1 Review(s)</span>
                                                </div>
                                            </div>
                                            <a href="/frontend/#">Faded Short Sle...</a>
                                            <div class="price-box">
                                                <span class="price">$16.51</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SINGLE-PRODUCT-ITEM END -->
                                <!-- SINGLE-PRODUCT-ITEM START -->
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="/frontend/#"><img src="/frontend/img/product/sale/6.jpg" alt="product-image" /></a>
                                        </div>
                                        <div class="product-info">
                                            <div class="customar-comments-box">
                                                <div class="rating-box">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="review-box">
                                                    <span>1 Review(s)</span>
                                                </div>
                                            </div>
                                            <a href="/frontend/#">Printed Chiffon Dr...</a>
                                            <div class="price-box">
                                                <span class="price">$16.40</span>
                                                <span class="old-price">$20.50</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SINGLE-PRODUCT-ITEM END -->
                                <!-- SINGLE-PRODUCT-ITEM START -->
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="/frontend/#"><img src="/frontend/img/product/sale/8.jpg" alt="product-image" /></a>
                                        </div>
                                        <div class="product-info">
                                            <div class="customar-comments-box">
                                                <div class="rating-box">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-empty"></i>
                                                </div>
                                                <div class="review-box">
                                                    <span>1 Review(s)</span>
                                                </div>
                                            </div>
                                            <a href="/frontend/#">Printed Dress</a>
                                            <div class="price-box">
                                                <span class="price">$26.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SINGLE-PRODUCT-ITEM END -->
                                <!-- SINGLE-PRODUCT-ITEM START -->
                            </div>
                            <!-- RELATED-CAROUSEL END -->
                        </div>
                    </div>
                </div>
            </div>
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
            <div class="single-product-right-sidebar clearfix">
                <h2 class="left-title">Tags </h2>
                <div class="category-tag">
                    <a href="/frontend/#">fashion</a>
                    <a href="/frontend/#">handbags</a>
                    <a href="/frontend/#">women</a>
                    <a href="/frontend/#">men</a>
                    <a href="/frontend/#">kids</a>
                    <a href="/frontend/#">New</a>
                    <a href="/frontend/#">Accessories</a>
                    <a href="/frontend/#">clothing</a>
                    <a href="/frontend/#">New</a>
                </div>
            </div>
            <!-- SINGLE SIDE BAR END -->
            <!-- SINGLE SIDE BAR START -->
            <div class="single-product-right-sidebar">
                <div class="slider-right zoom-img">
                    <a href="/frontend/#"><img class="img-responsive" src="/frontend/img/product/cms11.jpg" alt="sidebar left" /></a>
                </div>
            </div>
        </div>
        <!-- SINGLE SIDE BAR END -->
    </div>
@endsection
