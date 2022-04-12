<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Order;
use App\Product;
use App\OrderDetail;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use League\Flysystem\Exception;

class CartController extends GeneralController
{
    /*
    * Danh sách sản phẩm trong giỏ hàng
    */
    public function index()
    {
        //Lấy toàn bộ sản phẩm trong giỏ hàng
        $listProduct=Cart::content();

        //Lấy tổng giá của đơn hàng
        $totalPrice=Cart::total(0,'','',''.'');
        return view('frontend.cart.index', [
            'cart'=>$listProduct,
            'totalPrice'=>$totalPrice,
        ]);
    }

    /**
     * Thêm sản phẩm vào giỏ hàng
     * @param  Request $request
     *@param $id
     */
    public function addToCart($id, $qty=1): \Illuminate\Http\RedirectResponse
    {
        $product = Product::findOrFail($id);

        //Thông tin sé lưu vào giỏ hàng
        $cartInfo = [
            'id' => $product->id,
            'name' => $product->name,
            'qty' => $qty,
            'price' => $product->sale,
            'options' => [
                'image' => $product->image,
            ]
        ];

        //Gọi đến thư viện thêm sản phẩm vào giỏ hàng
        Cart::add($cartInfo);

        session(['totalItem' => Cart::count()]);

        // chuyển về trang danh sách sản phảm trong giỏ hàng
        return redirect()->route('shop.cart');
    }

    /**
     * Xóa sản phẩm khỏi giỏ hàng
     */
    public function removeToCart($rowId)
    {
        //Xóa sản phẩm trong giỏ
        Cart::remove($rowId);

        $listProduct=Cart::content();
        $totalPrice=Cart::total(0,'','',''.'');
    }

    /**
     * Cập nhật số lượng sản phẩm trong giỏ hàng
     */
    public function updateToCart(Request $request)
    {
        $rowId = $request->input('rowId');
        $qty = (int) $request->input('qty');

        // cập nhật lại số lương
        Cart::update($rowId, ['qty' => $qty]);

        $listProducts = Cart::content(); // lấy toàn sản phẩm trong giỏ
        $totalPrice = Cart::total(0,",","."); // lấy tổng giá của sản phẩm

        return view('frontend.components.cart', [
            'cart' => $listProducts,
            'totalPrice' => $totalPrice
        ]);
    }

    /**
     * Hủy đơn hàng
     */
    public function destroy()
    {
        // remove session to cart plugin
        Cart::destroy();

        // xóa lượng đã lưu từ bước thêm sản phẩm vào giỏ
        session(['totalItem' => 0]);

        return redirect('/');
    }

    /**
     * Tiến hành đặt hàng
     */
    public function order()
    {
        $totalCount = Cart::count();

        // Kiểm tra xem có sản phẩm nào trong giỏ hàng
        if ($totalCount <= 0) {
            return back()->with('msg', 'Không có sản phẩm trong giỏ hàng');
        }

        return view('frontend.cart.order');
    }

    /**
     * Xử lý lưu đơn đặt hàng sau khi khách hàn nhận đặt hàng
     */
    public function postOrder(Request $request)
    {
        // validate lại thông tin nhập từ form
        $request->validate([
            'fullname' => 'required|max:255',
            'phone' => 'required',
            'email' => 'required|email',
            'address' => 'required',
        ]);

        // Lưu vào bảng đơn đặt hàng - orders
        $order = new Order();
        $order->fullname = $request->input('fullname');
        $order->phone = $request->input('phone');
        $order->email = $request->input('email');
        $order->address = $request->input('address');
        $order->note = $request->input('note');
        $order->total = Cart::total(0,"",""); // lấy tổng giá của tất sản phẩm trong giỏ
        $order->order_status_id = 1; // 1 = mới, 2 = đang xu ly , 3= hoàn thanh , 4 = hủy
        $order->save(); // Lưu vào bảng chỉ tiết đơn đặt hàng

        // Tạo mã đơn hàng để gửi mail nếu cần
        $maDonHang = 'DH-'.$order->id.'-'.date('d').date('m').date('Y'); //ví dụ KQ: : DH-11-20052020
        $order->code = $maDonHang;
        $order->save(); // LƯU mã đơn hàng
        // gửi email kèm thông mã đơn hàng => mục truy vết dễ
        // code email....


        // Xử lý lưu chi tiết trong bảng order_detail
        $cart = Cart::content(); // danh sản phẩm đang lưu trong giỏ

        if (count($cart) >0) {
            foreach ($cart as  $item) {
                $_detail = new OrderDetail();
                $_detail->order_id = $order->id;
                $_detail->name = $item->name;
                $_detail->image = $item->options->image;
                $_detail->product_id = $item->id;
                $_detail->qty = $item->qty;
                $_detail->price = $item->price;
                $_detail->save();

                //xử lý trừ sản phảm trong kho ở đây
                $objProduct = Product::find($item->id);
                $objProduct->stock = $objProduct->stock - $item->qty;
                $objProduct->save();
                //end
            }
        }
        // end

        // Xóa thông tin giỏ hàng Hiện tại sau khi đặt hàng thành công
        Cart::destroy();
        // xoa luong
        session(['totalItem' => 0]);

        return redirect()->route('shop.cart.completedOrder');
    }

    /**
     * Form Hiển thị hoàn tất đơn đặt hàng
     */
    public function completedOrder()
    {
        return view('frontend.cart.completed');
    }
}

