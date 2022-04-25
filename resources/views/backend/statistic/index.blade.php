@extends('backend.layout.main')

@section('main-content')
    <section class="content-header">
        <h1>
            Báo cáo - Thống kê 
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div style="text-align: center">
            <form class="form-inline" style="width: 917px; margin: 0 auto" action="#">
            <div class="form-group">
                <label>Ngày bắt đầu: &nbsp</label>
                <input type="datetime-local" value="02/27/2020 00:00:00" name="statistic_date_start" required id="statistic_date_start" class="form-control mr-1"/>
            </div>
            <a href="{{route('admin.get.list.statistic')}}" value="Thống kê" class="btn btn-primary ml-5 mr-5" id="button_statistic">Thống kê</a>
            <div class="form-group">
                <label>Ngày kết thúc: &nbsp</label>
                <input type="datetime-local" value="02/27/2020 23:59:59" name="statistic_date_end" required id="statistic_date_end" class="form-control ml-1"/>
            </div>
{{--            <input type="submit" value="Xuất pdf" class="btn btn-success" style=""/>--}}
            </form>
            <hr/>
            <a href="#" class="btn btn-success mb-2" id="export_pdf" style="float:right;display:none">Xuất báo cáo</a>
            <div style="clear: both"></div>
            <div id="list_render_statistic">Không có dữ liệu !!!</div>
        </div>
    </section>
    <!-- /.content -->

 <!-- /.content-wrapper -->
@endsection
@section('javascript')
  <script>
    $(function(){
      $("#button_statistic").click(function(event){
        event.preventDefault();
        var statistic_date_start = $("#statistic_date_start").val();
        var statistic_date_end = $("#statistic_date_end").val();
        var url = $(this).attr('href');
        console.log(statistic_date_start);
        console.log(statistic_date_end);
        if(statistic_date_start == '' || statistic_date_end == ''){
            alert("Kiểm tra lại dữ liệu nhập có đầy đủ hay không!");
        }
        else if(statistic_date_start === statistic_date_end){
            alert("Ngày bắt đầu và ngày kết thúc cùng 1 thời điểm!");
        }
        else if(statistic_date_start > statistic_date_end){
          alert("Ngày bắt đầu không thể trước ngày kết thúc!");
        }
        else if(statistic_date_start < statistic_date_end){
        $.ajax({
          type : "GET",
          url : url,
          data : {
            statistic_date_start : statistic_date_start,
            statistic_date_end   : statistic_date_end
          }
        }).done(function(result){

          $("#list_render_statistic").html('').append(result);
          $("#export_pdf").css({'display':''})
        });
        }
        else{
            console.log("Giá trị nhập sai kiểm tra lại");
        }
        });
        $("#export_pdf").click(function(event){
        event.preventDefault();
        var statistic_date_start_pdf = $("#data-statistic-date-start").attr('data-statistic-date-start');
        var statistic_date_end_pdf = $("#data-statistic-date-end").attr('data-statistic-date-end');
        var url = "{{route('admin.get.export.statistic')}}";
        window.location.href = url+'?statistic_date_start_pdf='+statistic_date_start_pdf+'&&'+'statistic_date_end_pdf='+statistic_date_end_pdf;
      });
    });
  </script>
@endsection