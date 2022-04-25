dd("abc");
@if($transactions)
<?php $i=1;
    $total_earn_money = 0;
 ?>
 <div id="data-statistic-date-start" data-statistic-date-start="{{$statistic_date_start}}"></div>
 <div id="data-statistic-date-end" data-statistic-date-end="{{$statistic_date_end}}"></div>
<table class="table table-hover table-bordered">
    <thead class="thead-dark">
            <th scope="col">STT</th>
            <th scope="col" style="">Tên Sản phẩm</th>
            <th scope="col">Số lượng</th>
            <th scope="col">Đơn giá</th>
            <th scope="col">Giảm giá</th>
            <th scope="col">Thành tiền</th>
            <th scope="col">Người mua</th>
            <th>Mã giao dịch</th>
    </thead>
    <tbody>
        <tr></tr>
    @foreach($orders as $order )
        @foreach($order->Order as $order)
            <tr>
                <td>{{$i++}}</td>
                <td>{{$order->Product->name}}</td>
                <td>{{$order->stock}}</td>
                <td>{{number_format($order->price,0,',','.')}} VNĐ</td>
                <td>{{$order->sale>0?(number_format($order->price*(100-$order->sale)/100,0,',','.'))."VNĐ (-".$order->sale."%)":"Không giảm giá"}}</td>
                <td>{{$order->sale>0?number_format($order->stock*($order->price*(100-$order->sale)/100),0,'.','.'):number_format($order->stock*$order->price,0,',','.')}} VNĐ</td>
                <td>{{$orders->User->name}}</td>
                <td>{{$orders->id}}</td>
                <?php $total_earn_money = $total_earn_money + ($order->sale>0?$order->stock*($order->price*(100-$order->sale)/100):$order->stock*$order->price) ?>   
            </tr>
        @endforeach    
    @endforeach       
            <tr>
                <td colspan="6" style="text-align: center;font-weight: bold;font-size: 20px;">Tổng tiền:</td>
                <td colspan="2" style="text-align: center;font-weight: bold;font-size: 20px;">{{number_format($total_earn_money,'0',',','.')}} VNĐ</td>
            </tr>
    </tbody>
</table>
@endif