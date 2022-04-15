<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @method static content()
 * @method static total(int $int, string $string, string $string1, string $string2)
 * @method static count()
 */
class Cart extends Model
{
//    public $products; //Danh sách sản phẩm
//    public $totalPrice=0; //Tổng số tiền
//    public $totalQty=0; //Tống số sp
//
//    public function __construc($cart)
//    {
//        parent::__construct();
//
//        if(!empty($cart)) {
//            $this->products = $cart->products;
//            $this->totalPrice = $cart->totalPrice;
//            $this->totalQty = $cart->totalQty;
//        }
//    }
//
//    //Thêm sản phẩm vào giỏ hàng
//    public function add($product)
//    {
//        $_item = [
//            'qty' => 0,
//            'price' => $product->price,
//            'item' => $product,
//        ];
//
//        if ($this->products && array_key_exists($product->id, $this->products)) {
//            $_item=$this->products[$product->id];
//        }
//
//        $_item['qty']++;
//        $_item['price'] = $_item['qty'] * $product->price;
//
//        $this->products[$product->id] = $_item;
//        $this->totalPrice = $this->totalPrice + $product->price;
//        $this->totalQty = $this->totalQty + 1; //Tăng lên 1 sản phẩm
//    }
//
//    public function remove($id)
//    {
//        //Trừ bớt số lượng
//        $this->totalQty = $this->totalQty - $this->products[$id]['qty'];
//
//        //Trừ giá
//        $this->totalPrice = $this->totalPrice - $this->products[$id]['price'];
//
//        unset($this->products[$id]);
//    }

}
