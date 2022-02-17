@extends('en-SA.layouts.default')
@section('content')

<section class="inner_banner" style="background: url('images/about-page.jpg') no-repeat;background-position: center;background-size: cover;background-position: 50% 92%;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="vl-filter-text-box">
                    <h1>Past orders</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="manage_address">
  <div class="container">
    <div class="row">      
      <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="user_details mb-5">
  
          <h2>{{ $UserDetails->first_name.' '.$UserDetails->last_name }}</h2>

          <ul class="list-unstyled user-pro">

           <li> <span>{{ $UserDetails->email }}</span></li>
                <li>{{ $UserDetails->mobile }}</li>

          </ul>
        </div>
      </div>
     

      <div class="col-lg-2 col-md-2 col-sm-12">
        <div class="nav flex-column nav-pills pro_nav mb-4 ">
          <a class="nav-link asa" href="{{ route('address') }}">Address</a>
          <a class="nav-link active asa" href="{{ route('orders') }}">Orders</a>
         
        </div>
      </div>
      <div class="col-lg-10 col-md-10 col-sm-12">
        <h4>Past orders</h4>

        @foreach($OrdersDetails as $OrdersDetail)
       
       <div class="card p-3 mb-4 past_order_list">          
          <div class="row">
       <div class="col-lg-12 col-md-12 col-3">
       <p  style="background: #FFD333;padding: 10px;margin-bottom: 10px ;border-radius: 5px;color: #000;
       box-shadow: 0 3px 2px rgb(14 13 13);margin-top: -15px; margin-right: -15px ; margin-left: -15px; ">
       <b>Order id:- </b>  <span>{{ $OrdersDetail->order_id }}.</span></br>
       <b>Total amount:</b>  <span>{{ $OrdersDetail->txn_amount }}</span></br><b>Date:  <span>{{ date('d-m-Y',strtotime($OrdersDetail->txn_date)) }}</span> </b> </p>
            </div>

            @foreach(json_decode($OrdersDetail->billing_order_details) as $billing_order_detail))

            <div class="col-lg-2 col-md-3 col-3">
              <img src="{{$billing_order_detail->image}}" class="img-fluid"> 
            </div>
            <div class="col-lg-10 col-md-9 col-9">
              <h3>{{$billing_order_detail->name}}</h3>
              <p>Price : {{$billing_order_detail->totalAmountForPaid}}</p>
            </div>
            @endforeach
       
            </div>
          </div>
        </div> 

        @endforeach

   </div>
 </div>
</section>
@endsection
@section('javascript')
@endsection