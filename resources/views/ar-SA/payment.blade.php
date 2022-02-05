@include('New.header')

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            @if($message = Session::get('error'))
                <div class="alert alert-danger alert-dismissible fade in" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                    <strong>Error!</strong> {{ $message }}
                </div>
            @endif
            {!! Session::forget('error') !!}
            @if($message = Session::get('success'))
                <div class="alert alert-info alert-dismissible fade in" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                    <strong>Success!</strong> {{ $message }}
                </div>
            @endif
            {!! Session::forget('success') !!}
            <div class="panel panel-default">

                <div class="panel-body text-center">
                    <form action="{{route('pay')}}" method="POST" >
                        <!-- Note that the amount is in paise = 50 INR -->
                        <!--amount need to be in paisa-->
                        <script src="https://checkout.razorpay.com/v1/checkout.js"
                                data-key="rzp_test_C1TLCyzyiYMja0"
                                data-amount="1000"
                                data-buttontext="Pay 10 INR"
                                data-name="Laravelcode"
                                data-description="Order Value"
                                data-image="yout_logo_url"
                                data-prefill.name="name"
                                data-prefill.email="email"
                                data-theme.color="#ff7529">
                        </script>
                        <input type="hidden" name="_token" value="{!!csrf_token()!!}">
                        <input type="hidden" name="payment" value="{{session('totalAmountForPaidAfterDiscount')}}">
                        <input type="hidden" name="user_id" value="{{session('user_id')}}">

                        <button  type="button" class=" btn btn-primary panel-heading ">Pay With Razorpay</button>

                        </form>

                </div>

            </div>
        </div>
    </div>
</div>



@include('New.footer')
