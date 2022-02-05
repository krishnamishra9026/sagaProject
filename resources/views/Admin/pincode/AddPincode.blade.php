@extends('Admin.default')

@section('content')
  
  <div class="clearfix"></div>
  <div class="content-wrapper">
    <div class="container-fluid">
      <div class="row pt-2 pb-2">
        <div class="col-sm-9">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{route('Dashboard')}}">Dashboard</a></li>
            <li class="breadcrumb-item"><a href="{{route('Pincode')}}">Pincode List</a></li>
            <li class="breadcrumb-item active" aria-current="page">Add Pincode </li>
          </ol>
        </div>
      </div>
      
      <form action="{{route('InsertPincode')}}" enctype="multipart/form-data" method="post" id="AddMenuPageForm" name="AddForm" >
      <input type="hidden" name="_token" value="{{ csrf_token() }}">

        <div class="row">
          <div class="col-lg-12 mx-auto">
            <div class="card">
              <div class="card-body">
                <div class="card-title">Add Pincode</div>
                <hr>
                <span id="Return_msg">
                  <?php
                  if(Session::has('message')){
                    echo Session::get('message');
                  }
                  ?>
                </span>
                <div class="row">
                    
                  
                                    
                  <div class="col-sm-4">
                    <div class="form-group">
                        
                           <label for="input-1" >Pincode </label>
                                        <div id="PincodeNumber-multiple">
                                            <div class="item d-flex mb-2">
                                                <div class="w-100">
                                                    <input name="pincode[]" type="number" style="height:50px;" value="" maxlength="50"  id="pincode" class="form-control mb-0"   onchange="HideErr('pincode_msg')">
                                                </div>
                                                <button id="AddRowForpincode" class="btn btn-lg btn-success" style="max-height: 48px;"><i class="fa fa-plus"></i></button>
                                            </div>                                               
                                        </div>     
                        
                        
                        
                        
                     
                                         <span id="pincode_msg"></span>

                    </div> 

                  </div>
                  
                 
               
                  
                
                </div>
                <div class="form-group">
                  <button type="button" class="btn btn-primary  mt-3" id="SaveMenuPageBtn">Save</button>
                </div>
              </div>
            </div>
          </div>
          
        </div>
      </form>
    </div>
  </div>  
@endsection
@section('javascript')
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <script>
        $('#AddRowForpincode').on('click' , function (e){ 
            e.preventDefault();
            $('#PincodeNumber-multiple').append(`
                <div class="item d-flex mb-2">
                    <input type="number" name="pincode[]" style="height:50px;" id="pincode" value=""  maxlength="50" class="form-control mb-0" onchange="HideErr('pincode_msg')" >
                    <button class="btn btn-lg btn-dark removeRowForpincode"><i class="fa fa-minus"></i></button>
                </div>
              <span id="pincode_msg"></span>

            `)
        })
        $('#PincodeNumber-multiple').on('click','.removeRowForpincode' , function () { 
            $(this).parents('.item').remove();
        })
    </script>

     
       <script type="text/javascript">



$("#SaveMenuPageBtn").click(function(){
    
    
    var flag=1;
    var pincode = $('#pincode').val();


       if(pincode == '')
    {
         $("#pincode_msg").css('color','red');
         $("#pincode_msg").show();
         $("#pincode_msg").html('Enter Pincode');
         flag=0;
        }

    
  

    if(flag==1)
     {
      $( "#AddMenuPageForm" ).submit();
     }
});

function HideErr(id)
 { 
      $("#"+id).hide();
 }  
</script>

     
@endsection