@extends('frontend.layout.main')

@section('main-content')
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <!-- BSTORE-BREADCRUMB START -->
            <div class="bstore-breadcrumb">
                <a href="{{ route('shop.home') }}">HOMe</a>
                <span><i class="fa fa-caret-right	"></i></span>
                <span>About us</span>
            </div>
            <!-- BSTORE-BREADCRUMB END -->
        </div>
    </div>
    <div class="row">
        @foreach($data as $item)
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="media" style="margin-bottom: 15px">
                    <div class="media-left" style="float: left;display: block;">
                        <a href="{{ route('shop.detailArticle', ['slug' => $item->slug ]) }}">
                            <img width="100" alt="64x64" class="media-object" src="{{ asset($item->image) }}">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading" style="font-weight: bold">
                            <a href="{{ route('shop.detailArticle', ['slug' => $item->slug ]) }}">
                                {{ $item->title }}
                            </a>
                        </h4>

                        {!! $item->summary !!}
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endsection
