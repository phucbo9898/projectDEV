@extends('frontend.layout.main')

@section('main-content')
    <section class="main-content-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <!-- BSTORE-BREADCRUMB START -->
                    <div class="bstore-breadcrumb">
                        <a href="/">Trang chủ</a>
                        <span><i class="fa fa-caret-right	"></i></span>
                        <span>Liên hệ</span>
                    </div>
                    <!-- BSTORE-BREADCRUMB END -->
                </div>
            </div>


            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <h2 class="page-title contant-page-title">Gửi thông tin liên hệ với chúng tôi.</h2>
                </div>

                @if ($errors->any())
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="alert alert-danger">
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                @endif


                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <!-- CONTACT-US-FORM START -->
                    <div class="contact-us-form">
                        <div class="contact-form-center">
                            <!-- CONTACT-FORM START -->
                            <form class="contact-form" id="contactForm" method="post" action="{{ route('shop.postContact') }}">
                                @csrf
                                <div class="row">
                                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                                        <div class="form-group primary-form-group">
                                            <label>Họ Tên</label>
                                            <input type="text" class="form-control input-feild" id="name" name="name" value="">
                                        </div>
                                        <div class="form-group primary-form-group">
                                            <label>Email</label>
                                            <input type="text" class="form-control input-feild" id="email" name="email" value="">
                                        </div>
                                        <div class="form-group primary-form-group">
                                            <label>Điện Thoại</label>
                                            <input type="text" class="form-control input-feild" id="phone" name="phone" value="">
                                        </div>
                                        <br>
                                        <button type="submit" name="submit" id="sendMessage" class="send-message main-btn">Gửi <i class="fa fa-chevron-right"></i></button>
                                    </div>
                                    <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
                                        <div class="type-of-text">
                                            <div class="form-group primary-form-group">
                                                <label>Nội dung</label>
                                                <textarea class="contact-text" name="content"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <!-- CONTACT-FORM END -->
                        </div>
                    </div>
                    <!-- CONTACT-US-FORM END -->
                </div>
            </div>
        </div>
    </section>
@endsection
