@extends('frontend.layout.main')

@section('main-content')
    <section class="main-content-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <!-- BSTORE-BREADCRUMB START -->
                    <div class="bstore-breadcrumb">
                        <a href="index.html">Trang chủ</a>
                        <span><i class="fa fa-caret-right"></i></span>
                        <span>{{ $article->slug }}</span>
                    </div>
                    <!-- BSTORE-BREADCRUMB END -->
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <h2 class="page-title about-page-title">{{ $article->title }}</h2>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <!-- SINGLE-ABOUT-INFO START -->
                    <div class="single-about-info">
                        <div class="our-company">
                            {!! $article->description !!}
                        </div>
                    </div>
                    <!-- SINGLE-ABOUT-INFO END -->
                </div>
            </div>
        </div>
    </section>
@endsection
