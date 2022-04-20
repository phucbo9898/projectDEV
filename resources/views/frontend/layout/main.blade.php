<!doctype html>
<!--[if IE]><![endif]-->
<!--[if lt IE 7 ]>
<html lang="en" class="ie6">    <![endif]-->
<!--[if IE 7 ]>
<html lang="en" class="ie7">    <![endif]-->
<!--[if IE 8 ]>
<html lang="en" class="ie8">    <![endif]-->
<!--[if IE 9 ]>
<html lang="en" class="ie9">    <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en"><!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('frontend/img/favicon.png')}}">

    <!-- FONTS
		============================================ -->
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Bitter:400,700,400italic&amp;subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>

    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/animate.css')}}">

    <!-- FANCYBOX CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/jquery.fancybox.css')}}">

    <!-- BXSLIDER CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/jquery.bxslider.css')}}">

    <!-- MEANMENU CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/meanmenu.min.css')}}">

    <!-- JQUERY-UI-SLIDER CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/jquery-ui-slider.css')}}">

    <!-- NIVO SLIDER CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/nivo-slider.css')}}">

    <!-- OWL CAROUSEL CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/owl.carousel.css')}}">

    <!-- OWL CAROUSEL THEME CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/owl.theme.css')}}">

    <!-- BOOTSTRAP CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/bootstrap.min.css')}}">

    <!-- FONT AWESOME CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/font-awesome.min.css')}}">

    <!-- NORMALIZE CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/normalize.css')}}">

    <!-- MAIN CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/main.css')}}">

    <!-- STYLE CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/style.css')}}">

    <!-- RESPONSIVE CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/responsive.css')}}">

    <!-- IE CSS
		============================================ -->
    <link rel="stylesheet" href="{{ asset('frontend/css/ie.css')}}">

    <!-- MODERNIZR JS
		============================================ -->
    <script src="{{ asset('frontend/js/vendor/modernizr-2.6.2.min.js')}}"></script>

    <style>
        * {
            box-sizing: border-box;
        }
    </style>
</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->

<!-- HEADER-TOP START -->
<div class="header-top">
    <div class="container">
        <div class="row">
            <!-- HEADER-LEFT-MENU START -->
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

            </div>
            <!-- HEADER-LEFT-MENU END -->
            <!-- HEADER-RIGHT-MENU START -->
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="header-right-menu">
                    <nav>
                        <ul class="list-inline">
                            <li>
                                <a href="{{ route('shop.cart') }}">
                                    <i class="fa fa-shopping-cart cart-icon fa-2x"></i>
                                    {{Cart::content()->count()}}
                                </a>
                            </li>
                            <li><a href="{{ route('admin.dashboard.index') }}"><b>Admin</b></a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- HEADER-RIGHT-MENU END -->
        </div>
    </div>
</div>
<!-- HEADER-TOP END -->
<!-- HEADER-MIDDLE START -->
<section class="header-middle">
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <!-- LOGO START -->
                <div class="logo">
                    <a href="{{ route('shop.home') }}"><img style="height: 80px;
    width: 80px;" src="{{ asset('frontend/img/logo2.png')}}" alt="bstore logo"/></a>
                </div>
                <!-- LOGO END -->
                <!-- HEADER-RIGHT-CALLUS START -->

                <!-- HEADER-RIGHT-CALLUS END -->
                <!-- CATEGORYS-PRODUCT-SEARCH START -->
                <div class="categorys-product-search">
                    <form action="{{ route('shop.search') }}" method="get" class="search-form-cat"
                          style="width: 402px;">
                        <div class="search-product form-group" style="width: 400px;">
                            <input type="text" class="form-control search-form" name="s"
                                   placeholder="Nhập dữ liệu tìm kiếm ">
                            <button class="search-button" value="Search" name="s" type="submit">
                                <i class="fa fa-search"> </i>
                            </button>
                        </div>

                    </form>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- HEADER-MIDDLE END -->
<!-- MAIN-MENU-AREA START -->
<header class="main-menu-area">
    <div class="container">
        <div class="row">
            <!-- SHOPPING-CART START -->

            <!-- SHOPPING-CART END -->
            <!-- MAINMENU START -->
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 no-padding-right menuarea">
                <div class="mainmenu">
                    <nav>
                        <ul class="list-inline mega-menu">
                            <li><a href="{{route('shop.home')}}">Trang chủ</a></li>
                            <li><a href="{{route('shop.article')}}">Tin tức</a></li>
                            @foreach($categories as $parent)
                                @if($parent->parent_id == 0)
                                    <li class="" style="position: relative">
                                        <a href="{{ route('shop.category', ['slug' => $parent->slug]) }}">{{ $parent->name }}</a>
                                        <!-- DROPDOWN MENU START -->
                                        <div class="home-var-menu" style="left: 0px">
                                            <ul class="home-menu">
                                                @foreach($categories as $child)
                                                    @if($child->parent_id == $parent->id)
                                                        <li>
                                                            <a href="{{ route('shop.category', ['slug' => $child->slug]) }}">{{ $child->name }}</a>
                                                        </li>

                                                        <!-- xử lý menu cấp3 ở đây-->

                                                    @endif
                                                @endforeach
                                            </ul>
                                        </div>
                                        <!-- DROPDOWN MENU END -->
                                    </li>
                                @endif
                            @endforeach
                            <li><a href="{{ route('shop.contact') }}">Liên hệ</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- MAINMENU END -->
        </div>
        <div class="row">
            <!-- MOBILE MENU START -->
            <div class="col-sm-12 mobile-menu-area">
                <div class="mobile-menu hidden-md hidden-lg" id="mob-menu">
                    <span class="mobile-menu-title">MENU</span>
                    <nav>
                        <ul>
                            <li><a href="{{ asset('frontend/index.html')}}">Home</a>
                                <ul>
                                    <li><a href="{{ asset('frontend/index.html')}}">Home variation 1</a></li>
                                    <li><a href="{{ asset('frontend/index-2.html')}}">Home variation 2</a></li>
                                </ul>
                            </li>
                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Women</a>
                                <ul>
                                    <li><a href="{{ asset('frontend/shop-gird.html')}}">Tops</a>
                                        <ul>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">T-Shirts</a></li>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Blouses</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="{{ asset('frontend/shop-gird.html')}}">Dresses</a>
                                        <ul>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Casual Dresses</a></li>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Summer Dresses</a></li>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Evening Dresses</a></li>
                                        </ul>
                                    </li>

                                </ul>
                            </li>
                            <li><a href="{{ asset('frontend/shop-gird.html')}}">men</a>
                                <ul>
                                    <li><a href="{{ asset('frontend/shop-gird.html')}}">Tops</a>
                                        <ul>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Sports</a></li>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Day</a></li>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Evening</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="{{ asset('frontend/shop-gird.html')}}">Blouses</a>
                                        <ul>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Handbag</a></li>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Headphone</a></li>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Houseware</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="{{ asset('frontend/shop-gird.html')}}">Accessories</a>
                                        <ul>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Houseware</a></li>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Home</a></li>
                                            <li><a href="{{ asset('frontend/shop-gird.html')}}">Health & Beauty</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="{{ asset('frontend/shop-gird.html')}}">clothing</a></li>
                            <li><a href="{{ asset('frontend/shop-gird.html')}}">tops</a></li>
                            <li><a href="{{ asset('frontend/shop-gird.html')}}">T-shirts</a></li>
                            <li><a href="{{ asset('frontend/#')}}">Delivery</a></li>
                            <li><a href="{{ asset('frontend/about-us.html')}}">About us</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
            <!-- MOBILE MENU END -->
    </div>
</header>
<!-- MAIN-MENU-AREA END -->
<!-- MAIN-CONTENT-SECTION START -->
<section class="main-content-section">
    <div class="container">
        @yield('main-content')

    </div>
</section>

<br>
<!-- BRAND-CLIENT-AREA END -->
<!-- FOOTER-TOP-AREA START -->
<section class="footer-top-area">
    <div class="container">
        <div class="footer-top-container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                    <!-- FOOTER-TOP-LEFT START -->
                    <div class="footer-top-left">
                        <!-- NEWSLETTER-AREA START -->
                        <div class="about-us-area">
                            <h2>Về chúng tôi</h2>
                            <p>Cửa hàng của chúng tôi làm việc dựa thêm phương châm khách hàng là thượng đế, cam kết
                                luôn bán sản phẩm chính hãng, đúng giá.</p>
                        </div>
                        <!-- ABOUT-US-AREA END -->
                        <!-- FLLOW-US-AREA START -->
                        <div class="fllow-us-area">
                            <h2>Theo dõi chúng tôi</h2>
                            <ul class="flow-us-link">
                                <li><a href="https://www.facebook.com/phucbo9898/"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="https://mail.google.com/mail/u/0/#inbox"><i class="fa fa-google-plus"></i></a>
                                </li>
                            </ul>
                        </div>

                        <!-- NEWSLETTER-AREA END -->
                        <!-- ABOUT-US-AREA START -->

                        <!-- FLLOW-US-AREA END -->
                    </div>
                    <!-- FOOTER-TOP-LEFT END -->
                </div>
                <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
                    <!-- FOOTER-TOP-RIGHT-1 START -->
                    <div class="footer-top-right-1">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <!-- STORE-INFORMATION START -->
                                <div class="Store-Information">
                                    <h2>Thông tin của cửa hàng</h2>
                                    <ul>
                                        <li>
                                            <div class="info-lefticon">
                                                <i class="fa fa-map-marker"></i>
                                            </div>
                                            <div class="info-text">
                                                <p>Số 27 đường Cổ Linh, Phường Long Biên, Quận Long Biên, Thành Phố Hà
                                                    Nội. </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="info-lefticon">
                                                <i class="fa fa-phone"></i>
                                            </div>
                                            <div class="info-text call-lh">
                                                <p>Gọi cho chúng tôi ngay : 0969908298</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="info-lefticon">
                                                <i class="fa fa-envelope-o"></i>
                                            </div>
                                            <div class="info-text">
                                                <p>Email : <a href="https://mail.google.com/mail/u/0/#inbox"><i
                                                            class="fa fa-angle-double-right"></i>
                                                        phucbo9898@gmail.com</a></p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <!-- STORE-INFORMATION END -->
                            </div>
                            <div class="footer-top-right-2">
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <!-- FOTTER-MENU-WIDGET START -->
                                        <div class="fotter-menu-widget">
                                            <div class="single-f-widget">
                                                <h2>Thông tin</h2>
                                                <ul>
                                                    <li><a href="{{ route('shop.contact') }}"><i
                                                                class="fa fa-angle-double-right"></i>Liên hệ với chúng
                                                            tôi</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- FOTTER-MENU-WIDGET END -->
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- FOOTER-TOP-RIGHT-1 END -->

                </div>
            </div>
        </div>
    </div>
</section>
<!-- FOOTER-TOP-AREA END -->
<!-- COPYRIGHT-AREA START -->
<footer class="copyright-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="copy-right" style="text-align: center;color: white;">
                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                        All rights reserved | This template is made with <i class="icon-heart color-danger"
                                                                            aria-hidden="true"></i> by♥ <a
                            href="https://colorlib.com" target="_blank">Kise</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
                <div class="scroll-to-top">
                    <a href="{{ asset('frontend/#')}}" class="bstore-scrollertop"><i class="fa fa-angle-double-up"></i></a>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- COPYRIGHT-AREA END -->
<!-- JS
		===============================================-->
<!-- jquery js -->
<script src="{{ asset('frontend/js/vendor/jquery-1.11.3.min.js') }}"></script>

<!-- fancybox js -->
<script src="{{ asset('frontend/js/jquery.fancybox.js')}}"></script>

<!-- bxslider js -->
<script src="{{ asset('frontend/js/jquery.bxslider.min.js')}}"></script>

<!-- meanmenu js -->
<script src="{{ asset('frontend/js/jquery.meanmenu.js')}}"></script>

<!-- owl carousel js -->
<script src="{{ asset('frontend/js/owl.carousel.min.js')}}"></script>

<!-- nivo slider js -->
<script src="{{ asset('frontend/js/jquery.nivo.slider.js')}}"></script>

<!-- jqueryui js -->
<script src="{{ asset('frontend/js/jqueryui.js')}}"></script>

<!-- bootstrap js -->
<script src="{{ asset('frontend/js/bootstrap.min.js')}}"></script>

<!-- wow js -->
<script src="{{ asset('frontend/js/wow.js')}}"></script>
<script>
    new WOW().init();
</script>

<!-- Google Map js -->
<script src="{{ asset('frontend/https://maps.googleapis.com/maps/api/js')}}"></script>
<script>
    function initialize() {
        var mapOptions = {
            zoom: 8,
            scrollwheel: false,
            center: new google.maps.LatLng(35.149868, -90.046678)
        };
        var map = new google.maps.Map(document.getElementById('googleMap'),
            mapOptions);
        var marker = new google.maps.Marker({
            position: map.getCenter(),
            map: map
        });
    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>
<!-- main js -->
<script src="{{ asset('frontend/js/main.js')}}"></script>
</body>


</html>
