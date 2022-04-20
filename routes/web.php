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

// Danh sách tin tức
Route::get('/tin-tuc' , 'ShopController@articles')->name('shop.article');

// Chi tiết tin tức
Route::get('/chi-tiet-tin-tuc/{slug}','ShopController@detailArticle')->name('shop.detailArticle');

//Danh sách sản phẩm trong giỏ hàng
Route::get('/gio-hang','CartController@index')->name('shop.cart');
//Thêm sản phẩm vào giỏ hàng
Route::get('/gio-hang/them-san-pham-vao-gio-hang/{product_id}','CartController@addToCart')->name('shop.cart.add-to-cart');

// Xóa SP khỏi giỏ hàng
Route::get('/gio-hang/xoa-sp-gio-hang/{id}', 'CartController@removeToCart')->name('shop.cart.remove-to-cart');
// Cập nhật giỏ hàng
Route::get('/gio-hang/cap-nhat-so-luong-sp', 'CartController@updateToCart')->name('shop.cart.update-to-cart');
// Hủy đơn đặt hàng
Route::get('/gio-hang/huy-don-hang', 'CartController@destroy')->name('shop.cart.destroy');

Route::get('/dat-hang', 'CartController@order')->name('shop.cart.order');

Route::post('/dat-hang', 'CartController@postOrder')->name('shop.cart.postOrder');

Route::get('/dat-hang/hoan-tat-dat-hang', 'CartController@completedOrder')->name('shop.cart.completedOrder');

Route::get('/thanh-toan', 'CartController@checkout')->name('shop.cart.checkout');

// Đăng nhập ( ->name('admin.login') là đặt tên cho đường dẫn)
Route::get('/admin/login', 'AdminController@login')->name('admin.login');

//Xử lý login
Route::post('/admin/postLogin', 'AdminController@postLogin')->name('admin.postLogin');

// Đăng xuất
Route::get('/admin/logout', 'AdminController@logout')->name('admin.logout');

// Trang chủ - quản trị
Route::get('/admin', 'AdminController@login')->name('admin.index');
//------------------ Quản trị --------------------------------------------
// Gom nhóm các route
Route::group(['prefix' => 'admin','as' => 'admin.', 'middleware' => 'checkLogin'], function() {
    

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
    //QL đơn hàng
    Route::resource('order', 'OrderController');
    Route::post('order/remove-to-cart', 'OrderController@removeToCart')->name('order.remove');
});




