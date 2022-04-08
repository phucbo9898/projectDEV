@extends('frontend.layout.main')

@section('main-content')
    <div class="row">
        <!-- MAIN-SLIDER-AREA START -->
        <div class="main-slider-area">
            <!-- SLIDER-AREA START -->
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                <div class="slider-area">
                    <div id="wrapper">
                        <div class="slider-wrapper">

                            <div id="mainSlider" class="nivoSlider">
                                @foreach($banners as $banner)
                                    <img src="{{ asset($banner->image) }}" alt="main slider" title="#htmlcaption"/>
                                @endforeach
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- SLIDER-AREA END -->
            <!-- SLIDER-RIGHT START -->

            <!-- SLIDER-RIGHT END -->
        </div>
        <!-- MAIN-SLIDER-AREA END -->
    </div>

    @foreach($data as $row)
        <div class="row">
            <!-- FEATURED-PRODUCTS-AREA START -->
            <div class="featured-products-area">
                <div class="center-title-area">
                    <h2 class="center-title">{{ $row['name'] }}</h2>
                </div>
                <div class="col-xs-12">
                    <div class="row">
                        <!-- FEARTURED-CAROUSEL START -->
                        <div class="feartured-carousel">
                            @foreach($row['products'] as $product)
                                <div class="item">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="{{ route('shop.product',['slug' => $product->slug]) }}"><img
                                                    src="{{ asset($product->image) }}" alt="product-image"/></a>
                                            <div class="overlay-content">
                                                <ul>
                                                    <li><a href="{{ asset('frontend/#') }}" title="Quick view"><i class="fa fa-search"></i></a></li>
                                                    <li><a href="{{ asset('frontend/#') }}" title="Quick view"><i
                                                                class="fa fa-shopping-cart"></i></a></li>
                                                    <li><a href="{{ asset('frontend/#') }}" title="Quick view"><i
                                                                class="fa fa-retweet"></i></a></li>
                                                    <li><a href="{{ asset('frontend/#') }}" title="Quick view"><i
                                                                class="fa fa-heart-o"></i></a></li>
                                                </ul>
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
                                                    <span>1 Review (s)</span>
                                                </div>
                                            </div>
                                            <a href="{{ route('shop.product',['slug' => $product->slug]) }}">{{ $product->name }}</a>
                                            <div class="price-box">
                                                <span
                                                    class="price">{{ number_format($product->sale,0,",",".") }} ₫ </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <!-- FEARTURED-CAROUSEL END -->
                    </div>
                </div>
            </div>
            <!-- FEATURED-PRODUCTS-AREA END -->
        </div>
    @endforeach
    <!-- BRAND-CLIENT-AREA START -->
    <section class="brand-client-area">
        <div class="container">
            <div class="row">
                <!-- BRAND-CLIENT-ROW START -->
                <div class="brand-client-row">
                    <div class="center-title-area">
                        <h2 class="center-title">BRAND & CLIENTS</h2>
                    </div>
                    <div class="col-xs-12">
                        <div class="row">
                            <!-- CLIENT-CAROUSEL START -->
                            <div class="client-carousel">
                            @foreach($brands as $brand)
                                <!-- CLIENT-SINGLE START -->
                                    <div class="item">
                                        <div class="single-client">
                                                <img src="{{asset($brand->image)}}" alt="brand-client"/>
                                        </div>
                                    </div>
                                    <!-- CLIENT-SINGLE END -->
                                @endforeach
                            </div>
                            <!-- CLIENT-CAROUSEL END -->
                        </div>
                    </div>
                </div>
                <!-- BRAND-CLIENT-ROW END -->
            </div>
        </div>
    </section>
    <!-- BRAND-CLIENT-AREA END -->
@endsection
