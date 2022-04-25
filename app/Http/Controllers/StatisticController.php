<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Transaction;
use Barryvdh\DOMPDF\PDF;
use Illuminate\Support\Carbon;

class StatisticController extends Controller
{
    public function index()
    {
        return view('backend.statistic.index');
    }
    public function getStatistics(Request $request)
    {
        if($request->ajax())
        {
            $statistic_date_start = date("Y-m-d H:i:s", strtotime($request->statistic_date_start));
            $statistic_date_end = date("Y-m-d H:i:s", strtotime($request->statistic_date_end));
            $orders = Order::whereBetween('updated_at',[$request->statistic_date_start,$request->statistical_date_end])->get();
            $html = view('Admin.statistics.listStatistics',['orders'=>$orders,
                                                            'statistic_date_start'=>$statistic_date_start,
                                                            'statistic_date_end'=>$statistic_date_end])->render();
            return response()->json($html);
        }
        dd("Lỗi");
    }
    public function exportPdf(Request $request)
    {  
        $day = Carbon::now()->day;
        $month = Carbon::now()->month;
        $year = Carbon::now()->year;
        $orders = Order::whereBetween('updated_at',[$request->statistic_date_start_pdf,
                                                                $request->statistic_date_end_pdf])->get();
        $data = [
            'transactions' => $orders,
            'statistic_date_start'=>$request->statistic_date_start_pdf,
            'statistic_date_end'=>$request->statistic_date_end_pdf,
            'day' => $day,
            'month' => $month,
            'year' => $year
        ];	
        $pdf = \PDF::loadView('Admin.statistics.testpdf-pdf', $data);
        return $pdf->download('statistic'.$request->statistic_date_start_pdf.'to'.$request->statistic_date_end_pdf.'.pdf');
        // return view('admin::components.testpdf-pdf',$data);
    }
}
