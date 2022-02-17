@extends('en-SA.layouts.default')
@section('content')

<?php
/*echo "<pre>";
print_r($cartCollection);
die;*/

use App\Helpers\Common;
#echo "<pre>";print_r(Common::getCountryArray());"</pre>";exit;


$countries = \DB::table('countries')->get();
$states = \DB::table('states')->take(20)->get();
$address_data = json_decode($usersInfo->shipping_address);

?>
<section class="checkout_page">
    <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-lg-12">
            	<p class="text-center pb-4">
            		<a class="text-dark pl-2 pr-2" href="javascript:void(0);">@if(session('locale')=='en')  Cart @elseعربة التسوق   @endif</a> <i class="fas fa-angle-right"></i> 
            		<a class="text-dark pl-2 pr-2" href="javascript:void(0);">@if(session('locale')=='en')  Information @elseمعلومة   @endif</a> <i class="fas fa-angle-right"></i> 
            		<a class="text-dark pl-2 pr-2" href="javascript:void(0);">@if(session('locale')=='en')  Shipping @elseشحن   @endif</a> <i class="fas fa-angle-right"></i> 
            		<a class="text-dark pl-2 pr-2" href="javascript:void(0);">@if(session('locale')=='en')  Payment @elseقسط   @endif</a>
            	</p>
            </div>
            <form action="{{route('pay')}}" method="POST" autocomplete="off" autofill="off"> 
                        {{ csrf_field() }}
                        <div class="row col-lg-12">
                <div class="col-lg-7">
                    <!-- <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">@if(session('locale')=='en')  Billing Address @else  عنوان وصول الفواتير  @endif</span></h5> -->
                    <div class="bg-light p-30 mb-5">
                        <div class="row">
                            <div id="show-errors" style="color: red; margin-left: 30%; margin-bottom: 14px;"></div>
                        	<div class="col-md-12">
    	                        <div class="form-group">
    	                            <label class="sr-only">First Name</label>
    	                            <input class="form-control" name="email" id="email" required type="Email" placeholder="Email">
    	                        </div>

    	                        <div class="custom-control custom-checkbox mb-3">
                                    <input type="checkbox" required class="custom-control-input" name="keep_me" id="newaccount">
                                    <label class="custom-control-label" for="newaccount">Keep me up to date on news and offers</label>
                                </div>
                            </div>

                            <div class="col-md-12">
                            	<h5>@if(session('locale')=='en') Shipping Address @else عنوان الشحن   @endif</h5>
                            </div>

                            <div class="col-md-6">
    	                        <div class="form-group">
    	                            <label class="sr-only">First Name</label>
    	                            <input class="form-control" type="text" placeholder="First Name" required name="fname" id="fname">
    	                        </div>
                            </div>

                            <div class="col-md-6">
    	                        <div class="form-group">
    	                            <label class="sr-only">Last Name</label>
    	                            <input class="form-control" type="text" placeholder="Last Name" placeholder="First Name" name="lname" id="lname">
    	                        </div>
                            </div>

                            <div class="col-md-12">
    	                        <div class="form-group">
    	                            <label class="sr-only">Company (optional)</label>
    	                            <input class="form-control" type="text" placeholder="Company (optional)" name="company" id="company">
    	                        </div>
                            </div>

                            <div class="col-md-12">
    	                        <div class="form-group">
    	                            <label class="sr-only">Address</label>
    	                            <input required class="form-control" type="text" placeholder="Address" name="address" value="{{ @$address_data->address }}" id="address">
    	                        </div>
                            </div>

                            <!--<div class="col-md-12">
    	                        <div class="form-group">
    	                            <label class="sr-only">Apartment, suite, etc. (optional)</label>
    	                            <input class="form-control" type="text" placeholder="Apartment, suite, etc. (optional)">
    	                        </div>
                            </div>-->

                            <div class="col-md-4">
                                <div class="form-group ">
                                <label class="fixTopFild">Country</label>
                                <select required class="custom-select" name="country" id="country">
                                @foreach($countries as $country)
                                <option value="{{$country->Code}}" @if($country->Code == 'SA') selected @endif @if($country->Code == @$address_data->country) selected @endif>{{$country->Name}}</option> 
                                 @endforeach
                                </select>	 
                                  
                                </div>
                            </div>


                            <div class="col-md-4">
                                <div class="form-group ">
                                <label class="fixTopFild">State</label>
                                <select class="custom-select" name="state" id="state">
                                    <option value="">Select State</option>
                                {{-- @foreach($states as $state)
                                <option value="{{$state->Name}}" @if($state->Name == @$address_data->state) selected @endif>{{$state->Name}}</option> 
                                 @endforeach --}}
                                </select>    
                                  
                                </div>
                            </div>

                            {{-- <div class="col-md-4">
                                <div class="form-group ">
                                    <label class="sr-only">State</label>
    	                            <input class="form-control" type="text" placeholder="District" value="{{ @$address_data->state }}" name="state" id="state">
                                </div>
                            </div> --}}

                            <div class="col-md-4">
    	                        <div class="form-group">
    	                            <label class="sr-only">City</label>
    	                            <input class="form-control" type="text" required placeholder="city" name="city" value="{{ @$address_data->city }}" id="city">
    	                        </div>
                            </div>

                            
                            <div class="col-md-4">
    	                        <div class="form-group ">
    	                            <label class="sr-only">PostCode</label>
    	                            <input class="form-control" name="postcode" required id="postcode" type="text" value="{{ @$address_data->postcode }}" placeholder="Postcode">
    	                        </div>
                            </div>

                            <div class="col-md-6">
    	                        <div class="form-group">
    	                            <label class="sr-only">Phone (optional)</label>
    	                            <input class="form-control" name="phone" id="phone" value="{{ @$address_data->phone }}" type="text" placeholder="Phone (optional)">
    	                        </div>
                            </div>

                            <div class="col-md-8">
                            	<div class="d-flex justify-content-between">
                            		<div class="col-md-4">
                            			<a href="{{ route('ShowCartItems')}}" class="py-3 text-dark d-inline-block"><i class="fas fa-angle-left"></i> @if(session('locale')=='en')  Return to cart @else العودة إلى عربة التسوق    @endif</a>
                            		</div>

                            		<!-- <div class="col p-0">
                            			<a href="#" class="btn btn-block btn-primary font-weight-bold py-2">@if(session('locale')=='en') Pay Now @else ادفع الآن   @endif</a>
                            		</div> -->
                            	</div>
                            </div>
                        </div>
                    </div>

                    <!--<div class="collapse mb-5" id="shipping-address">
                        <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Shipping Address</span></h5>
                        <div class="bg-light p-30">
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label class="sr-only">First Name</label>
                                    <input class="form-control" type="text" placeholder="John">
                                </div>

                                <div class="col-md-6 form-group">
                                    <label class="sr-only">Last Name</label>
                                    <input class="form-control" type="text" placeholder="Doe">
                                </div>

                                <div class="col-md-6 form-group">
                                    <label class="sr-only">E-mail</label>
                                    <input class="form-control" type="text" placeholder="example@email.com">
                                </div>

                                <div class="col-md-6 form-group">
                                    <label class="sr-only">Mobile No</label>
                                    <input class="form-control" type="text" placeholder="+123 456 789">
                                </div>

                                <div class="col-md-6 form-group">
                                    <label class="sr-only">Address Line 1</label>
                                    <input class="form-control" type="text" placeholder="123 Street">
                                </div>

                                <div class="col-md-6 form-group">
                                    <label class="sr-only">Address Line 2</label>
                                    <input class="form-control" type="text" placeholder="123 Street">
                                </div>

                                <div class="col-md-6 form-group">
                                    <label class="sr-only">Country</label>
                                    <select class="custom-select">
                                        <option selected>United States</option>
                                        <option>Afghanistan</option>
                                        <option>Albania</option>
                                        <option>Algeria</option>
                                    </select>
                                </div>

                                <div class="col-md-6 form-group">
                                    <label class="sr-only">City</label>
                                    <input class="form-control" type="text" placeholder="New York">
                                </div>

                                <div class="col-md-6 form-group">
                                    <label class="sr-only">State</label>
                                    <input class="form-control" type="text" placeholder="New York">
                                </div>

                                <div class="col-md-6 form-group">
                                    <label class="sr-only">ZIP Code</label>
                                    <input class="form-control" type="text" placeholder="123">
                                </div>
                            </div>
                        </div>
                    </div>-->
                </div>
                
                <div class="col-lg-5">
                    <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">@if(session('locale')=='en') Order Total @else  الطلب الكلي   @endif</span></h5>
                    <div class="bg-light p-2 mb-5 right_car_div">
                        <div class="table-responsive checkoutPrd_listing">
                        	<table class="w-100">
                                <?php
                                $i = 1; 
                                $old_total = 0;
                                $new_total = 0;
                                foreach($cartCollection as $item){


                                    $new_total += $item->price*$item->quantity;
                                    $old_total += $item->attributes->OldPrice*$item->quantity;

                                    $languageId = DB::table('language')->select('id')->where('status','=','1')->where('language_slug','=',session('locale'))->first();
                                    $product = DB::table('products')->where('serial_no','=',$item->attributes->serialNo)->where('status','=','1')->where('language_id','=',$languageId->id)->first();
                                    $subcategory = DB::table('sub-category')->where('id','=',@$product->sub_category_id)->where('status','=','1')->where('language_id','=',$languageId->id)->first();
                                ?>
                        		<tr>
                        			<td width="20%">
                        				<div class="img_wrap">
                        					<img src="{{ $item->attributes->image }}">
                        					<span class="qnt">{{ $item->quantity}}</span>
                        				</div>
                        			</td>

                        			<th width="">
                        				<h2>{{ isset($subcategory->name) ? $subcategory->name : '' }} @if(session('locale')=='en')   @else  @endif</h2>
                        				<small>{{ @$product->color }}</small>
                        			</th>

                        			<td width="20%">
                        				<h3 class="font-weight-semi-bold text-right">{{ $item->price*$item->quantity }} SAR </h3>
                        				<h6 class="text-muted text-right"><del>{{ $item->attributes->OldPrice*$item->quantity }} SAR</del></h6>
                        			</td>
                        		</tr>
                        		<?php $i++; } 
                                $discount = $old_total-$new_total;

                                Session::forget('discountAmount');
                                session()->put('discountAmount',$discount);
                            ?>

                        		<!-- <tr>
                        			<td colspan="3">
                        				<hr>
                        				<form class="mt-4 d-flex">
    									  <div class="form-group mx-sm-3 mb-2 w-100">
    									    <label class="sr-only">Gift card or discount code</label>
    									    <input type="text" class="form-control w-100" placeholder="Gift card or discount code">
    									  </div>
    									  <button type="submit" class="btn btn-primary mb-2">Apply</button>
    									</form>
                        			</td>
                        		</tr> -->

                        	</table>
                        	<hr>
                        	<table class="w-100 mt-3">
                        		<tr>
                        			<td><p class="ml-3">@if(session('locale')=='en') Subtotal @else  المجموع الفرعي   @endif</p></td>
                        			<td class="text-right text-dark">{{ \Cart::getTotal() }} SAR</td>
                        		</tr>
                        		<!-- <tr>
                        			<td><p class="ml-3">Shipping <a href="#" class="bg-dark pl-2 pr-2 rounded">?</a></p></td>
                        			<td class="text-right">Calculated at next step</td>
                        		</tr> -->
                        	</table>
                        	<table class="w-100 mt-3">
                        		<tr>
                        			<td><p class="ml-3">@if(session('locale')=='en') Discount  @else  المجموع الفرعي   @endif</p></td>
                        			<td class="text-right text-dark">{{$discount}}</td>
                        		</tr>
                        		
                        	</table>
                            <?php

                            $totalPrice = \Cart::getTotal();               
                        ?>

                            
                        		<table class="w-100 mt-3">
                        		<tr>
                        			<td><p class="ml-3">@if(session('locale')=='en') Shipping Charges    @else  المجموع الفرعي   @endif</p></td>
                                    <input type="hidden" id="shippingCharges" value="0" name="shipping_charges">
                        			<td class="text-right text-dark"><span id="shipping_charges">00.00</span> SAR</td>
                        		</tr>
                        		
                        	</table>

                        	<hr>
                        	<table class="w-100 mt-3">
                        
                        		<tr>
                        			<td ><p class="ml-3"><b>@if(session('locale')=='en') Total @else المجموع    @endif</b></p></td>
                                    <input type="hidden" value="{ $totalPrice }}" name="total_price" id="Total_price">
                        			<td class="text-right text-dark"><h3><span id="TotalPrice">{{ $totalPrice }}</span> SAR</h3></td>
                        		</tr>
                        	</table>
                            <input type="hidden" name="productname" value="{{ isset($subcategory->name) ? $subcategory->name : '' }}">
                            <input type="hidden" name="productprice" value="1">
                            <input type="hidden" name="mb_language" value="en-SA">
                            <div class="col p-0 btn-group">
                                <button type="submit" name="submit" formaction="{{route('payForCashOnDelivery')}}" class="btn btn-info font-weight-bold py-2" value="Cash On Delivery" disabled>Cash On Delivery</button>
                                <!--<a href="#" class="btn btn-block btn-primary font-weight-bold py-2">@if(session('locale')=='en') Pay Now @else ادفع الآن   @endif</a>-->
                                <button type="submit" name="submit" class="btn btn-primary font-weight-bold py-2" disabled>@if(session('locale')=='en') Pay Now @else ادفع الآن   @endif</button>
                            </div>
                        </div>                 
                    </div>
                </div>
            </div>

            </form>
            
        </div>
    </div>
</section>


@endsection
@section('javascript')
<script>
    $(function() {
        $("#postcode").trigger('keyup');
        $('select[name=country]').change(function() {
            $("#city").val('');
            $("#postcode").val('').trigger('change');
            var id = $(this).val();
            var url = '{{ route("state.ajax", ":id") }}';
            url = url.replace(':id', id),
           $.ajax({

              url: url,
            method: 'get',
            headers:{
              'X-CSRF-TOKEN' : '{{ csrf_token() }}'
          },
        success: function (data) {  
          $('select[name="state"]').empty();
            $.each(data, function(key, value) {
                $('select[name="state"]').append('<option value="'+ value +'">'+ value +'</option>');
                });
        },
        }); 


         
        });
    });

    $("#state").change(function(event) {
        $("#city").val('');
        $("#postcode").val('').trigger('change');
    });
    $("#city").keyup(function(event) {
        $("#postcode").val('').trigger('change');
    });

    $(document).on("keyup", "#postcode", function() {
        $("#show-errors").html('');
        var postalCode = $('#postcode').val();
        if(postalCode.length > 3){
            var url = "{{ route('validate-post-address') }}";
            var id= 
            $.ajax({
                url: url,
                type: "POST",
                cache: false,
                data:{
                    _token:'{{ csrf_token() }}',
                    address: $('#address').val(),
                    postcode: $('#postcode').val(),
                    state: $('#state').val(),
                    country: $('#country').val(),
                    city: $('#city').val()
                },
                beforeSend: function() {
                    $("#loading-image").show();
                },
                success: function(dataResult){
                    $("#loading-image").hide();
                    if (dataResult.success) {
                        $("#show-errors").html('');
                        $("#shipping_charges").html(dataResult.data.Value);
                        $("#shippingCharges").val(dataResult.data.Value);
                        var total = parseFloat("{{ $totalPrice }}");
                        var shipping = parseFloat(dataResult.data.Value);
                        $("#TotalPrice").html(total+shipping)
                        $("#Total_price").val(total+shipping);

                        $('button[type="submit"]').prop('disabled', false)
                    }else{

                        if(typeof dataResult.data[2] != "undefined")
                            $("#show-errors").html(dataResult.data[0].Message+', '+dataResult.data[1].Message+', '+dataResult.data[2].Message);
                        else if(typeof dataResult.data[1] != "undefined")
                            $("#show-errors").html(dataResult.data[0].Message+', '+dataResult.data[1].Message);
                        else
                            $("#show-errors").html(dataResult.data[0].Message);

                        $('button[type="submit"]').prop('disabled', true)
                    }
                }
            });
        }
    });


</script>
@endsection