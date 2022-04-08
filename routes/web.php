<?php
//Route::get('/test', function (){
//    return 'xin chao';
//});
//
//// VD 1 route có 1 tham số
//Route::get('hoten/{ten}', function ($ten){
//    return 'xin chao' . $ten;
//});
//
//// VD 1 route có 2 tham số
//Route::get('thongtin/{tuoi}/{ten}', function ($tuoi,$ten){
//    return 'xin chao ' . $ten . 'tuổi : ' .$tuoi ;
//});
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Trang home của website
Route::get('/', 'ShopController@index')->name('shop.home');

Route::get('/tim-kiem', 'ShopController@search')->name('shop.search');

Route::get('/danh-muc/{slug}', 'ShopController@category')->name('shop.category');

Route::get('/chi-tiet-san-pham/{slug}', 'ShopController@product')->name('shop.product');

Route::get('/lien-he', 'ShopController@contact')->name('shop.contact');

Route::post('/gui-lien-he', 'ShopController@postContact')->name('shop.postContact');

Route::get('/dat-hang', 'ShopController@order')->name('shop.order');

// Danh sách tin tức
Route::get('/tin-tuc' , 'ShopController@articles')->name('shop.article');

// Chi tiết tin tức
Route::get('/chi-tiet-tin-tuc/{slug}','ShopController@detailArticle')->name('shop.detailArticle');

// Đăng nhập ( ->name('admin.login') là đặt tên cho đường dẫn)
Route::get('/admin/login', 'AdminController@login')->name('admin.login');

//Xử lý login
Route::post('/admin/postLogin', 'AdminController@postLogin')->name('admin.postLogin');

// Đăng xuất
Route::get('/admin/logout', 'AdminController@logout')->name('admin.logout');

//------------------ Quản trị --------------------------------------------
// Gom nhóm các route
Route::group(['prefix' => 'admin','as' => 'admin.', 'middleware' => 'checkLogin'], function() {
    // Trang chủ - quản trị
    Route::get('/index', 'AdminController@index');

    // Route::get('/duong-dan', 'ten-controller@method');
    Route::resource('banner', 'BannerController');
    Route::resource('user', 'UserController');
    Route::resource('product', 'ProductController');
    Route::resource('category', 'CategoryController');
    Route::resource('article', 'ArticleController');
    Route::resource('brand', 'BrandController');
    Route::resource('contact', 'ContactController');
    Route::resource('dashboard', 'DashboardController');
    // Route::resource('setting', 'SettingController');
    //Route::get('/category', 'CategoryController@index');
});




