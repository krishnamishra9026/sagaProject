<?php
namespace App\Http\Controllers\Admin;
use Route;
use Mail;
use Auth, Hash;
use Validator;
use Session;
use Redirect;
use DB;
use Crypt;
use DateTime;
use Illuminate\Http\Request;
use App\Http\Models\Admin\OrderModel;
use Illuminate\Routing\ResponseFactory;
use App\Http\Controllers\Controller;
use App\Helpers\Common;


class OrderController extends Controller 
{
	public function __construct(Request $request)
	{
		$this->OrderModel = new OrderModel();	
	}

	public function List(){
		$Data['Title'] 				= 'Order';
		$Data['Menu'] 				= 'Order';
		$Data['SubMenu'] 			= '';
    $Data['SelectMenu']         = '';
    $Data['OrderArr']           = $this->OrderModel->Listing();
    
	return View('Admin/Order/List')->with($Data);
	
	}

  public function genearteSipment($id)
  {

$curl = curl_init();
$date  = \Carbon\Carbon::now()->timestamp;

$dataArry = [
  'ClientInfo' => [
    'UserName' => 'reem@reem.com',
    'Password' => '123456789',
    'Version' => 'v1',
    'AccountNumber' => '20016',
    'AccountPin' => '331421',
    'AccountEntity' => 'AMM',
    'AccountCountryCode' => 'JO',
    'Source' => 24,
  ],
  'LabelInfo' => NULL,
  'Shipments' => [
    0 => [
      'Reference1' => '',
      'Reference2' => '',
      'Reference3' => '',
      'Shipper' => [
        'Reference1' => '',
        'Reference2' => '',
        'AccountNumber' => '20016',
        'PartyAddress' => [
          'Line1' => 'Test',
          'Line2' => '',
          'Line3' => '',
          'City' => 'Amman',
          'StateOrProvinceCode' => '',
          'PostCode' => '',
          'CountryCode' => 'JO',
          'Longitude' => 0,
          'Latitude' => 0,
          'BuildingNumber' => NULL,
          'BuildingName' => NULL,
          'Floor' => NULL,
          'Apartment' => NULL,
          'POBox' => NULL,
          'Description' => NULL,
        ],
        'Contact' => [
          'Department' => '',
          'PersonName' => 'aramex',
          'Title' => '',
          'CompanyName' => 'aramex',
          'PhoneNumber1' => '009625515111',
          'PhoneNumber1Ext' => '',
          'PhoneNumber2' => '',
          'PhoneNumber2Ext' => '',
          'FaxNumber' => '',
          'CellPhone' => '9677956000200',
          'EmailAddress' => 'test@test.com',
          'Type' => '',
        ],
      ],
      'Consignee' => [
        'Reference1' => '',
        'Reference2' => '',
        'AccountNumber' => '',
        'PartyAddress' => [
          'Line1' => 'Test',
          'Line2' => '',
          'Line3' => '',
          'City' => 'Duabi',
          'StateOrProvinceCode' => '',
          'PostCode' => '',
          'CountryCode' => 'AE',
          'Longitude' => 0,
          'Latitude' => 0,
          'BuildingNumber' => '',
          'BuildingName' => '',
          'Floor' => '',
          'Apartment' => '',
          'POBox' => NULL,
          'Description' => '',
        ],
        'Contact' => [
          'Department' => '',
          'PersonName' => 'aramex',
          'Title' => '',
          'CompanyName' => 'aramex',
          'PhoneNumber1' => '009625515111',
          'PhoneNumber1Ext' => '',
          'PhoneNumber2' => '',
          'PhoneNumber2Ext' => '',
          'FaxNumber' => '',
          'CellPhone' => '9627956000200',
          'EmailAddress' => 'test@test.com',
          'Type' => '',
        ],
      ],
      'ThirdParty' => [
        'Reference1' => '',
        'Reference2' => '',
        'AccountNumber' => '',
        'PartyAddress' => [
          'Line1' => '',
          'Line2' => '',
          'Line3' => '',
          'City' => '',
          'StateOrProvinceCode' => '',
          'PostCode' => '',
          'CountryCode' => '',
          'Longitude' => 0,
          'Latitude' => 0,
          'BuildingNumber' => NULL,
          'BuildingName' => NULL,
          'Floor' => NULL,
          'Apartment' => NULL,
          'POBox' => NULL,
          'Description' => NULL,
        ],
        'Contact' => [
          'Department' => '',
          'PersonName' => '',
          'Title' => '',
          'CompanyName' => '',
          'PhoneNumber1' => '',
          'PhoneNumber1Ext' => '',
          'PhoneNumber2' => '',
          'PhoneNumber2Ext' => '',
          'FaxNumber' => '',
          'CellPhone' => '',
          'EmailAddress' => '',
          'Type' => '',
        ],
      ],
      'ShippingDateTime' => time() + 50000,
      'DueDate' => time() + 60000,
      'Comments' => '',
      'PickupLocation' => '',
      'OperationsInstructions' => '',
      'AccountingInstrcutions' => '',
      'Details' => [
        'Dimensions' => NULL,
        'ActualWeight' => [
          'Unit' => 'KG',
          'Value' => 0.5,
        ],
        'ChargeableWeight' => NULL,
        'DescriptionOfGoods' => 'Books',
        'GoodsOriginCountry' => 'JO',
        'NumberOfPieces' => 1,
        'ProductGroup' => 'EXP',
        'ProductType' => 'PDX',
        'PaymentType' => 'P',
        'PaymentOptions' => '',
        'CustomsValueAmount' => NULL,
        'CashOnDeliveryAmount' => NULL,
        'InsuranceAmount' => NULL,
        'CashAdditionalAmount' => NULL,
        'CashAdditionalAmountDescription' => '',
        'CollectAmount' => NULL,
        'Services' => '',
        'Items' => [
        ],
      ],
      'Attachments' => [
      ],
      'ForeignHAWB' => '',
      'TransportType ' => 0,
      'PickupGUID' => '',
      'Number' => NULL,
      'ScheduledDelivery' => NULL,
    ],
  ],
  'Transaction' => [
    'Reference1' => '',
    'Reference2' => '',
    'Reference3' => '',
    'Reference4' => '',
    'Reference5' => '',
  ],
];

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://ws.dev.aramex.net/ShippingAPI.V2/Shipping/Service_1_0.svc/json/CreateShipments',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>json_encode($dataArry),
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json',
    'Accept: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
die();


    $orderDetails = DB::table('orders')
                ->select('*')
                ->where('order_id',$id)
                ->first();

                $data = Aramex::createPickup([
                  'name' => 'MyName',
                  'cell_phone' => '+123123123',
                  'phone' => '+123123123',
                  'email' => 'myEmail@gmail.com',
                  'city' => 'New York',
                  'country_code' => 'US',
                  'zip_code'=> 10001,
                  'line1' => 'The line1 Details',
                  'line2' => 'The line2 Details',
                  'line3' => 'The line2 Details',
                  'pickup_date' => time() + 45000,
                  'ready_time' => time()  + 43000,
                  'last_pickup_time' => time() +  45000,
                  'closing_time' => time()  + 45000,
                  'status' => 'Ready', 
                  'pickup_location' => 'some location',
                  'weight' => 123,
                  'volume' => 1
                ]);

        // extracting GUID
       if (!$data->error)
          $guid = $data->pickupGUID;


    echo "<pre>";print_r($guid);"</pre>";exit;
  }

	public function RefundList(){
		$Data['Title'] 				= 'Refund';
		$Data['Menu'] 				= 'Refund';
		$Data['SubMenu'] 			= '';
        $Data['SelectMenu']         = '';
        $Data['OrderArr']           = $this->OrderModel->RefundListing();
		return View('Admin/Refund/List')->with($Data);
		
	}

	public function DeliveredOrderList(){
		$Data['Title'] 				= 'DeliveredOrder';
		$Data['Menu'] 				= 'DeliveredOrder';
		$Data['SubMenu'] 			= '';
        $Data['SelectMenu']         = '';
        $Data['OrderArr']           = $this->OrderModel->DeliveredOrderListing();
		return View('Admin/DeliveredOrder/List')->with($Data);
		
	}
	
	public function OrderTracking(){
		$Data['Title'] 				= 'OrderTracking';
		$Data['Menu'] 				= 'OrderTracking';
		$Data['SubMenu'] 			= '';
        $Data['SelectMenu']         = '';
        $Data['OrderArr']           = $this->OrderModel->OrderTrackingListing();
		return View('Admin/OrderTracking/List')->with($Data);
		
	}
	
	
	public function GenerateInvoice($id){
        
      
		$orderDetails = DB::table('orders')
								   ->select('*')
								   ->where('order_id',$id)
								   ->first();

                   $billingAddress = DB::table('user_authentication_details')
                   ->select('*')
                   ->where('email',$orderDetails->billing_email)
                   ->first();
                      
						  $orders['orderData']   =  $orderDetails;
              $orders['billingAddress']   =  $billingAddress;
						  $orders['gst'] = $this->OrderModel->gst();
					

return View('Admin/generate-invoice')->with($orders);
	   
   }
   
   	public function GetOrderDetails($id){
        
      
		$orderDetails = DB::table('orders')
								   ->select('*')
								   ->where('order_id',$id)
								   ->first();
   
 
						  $orders['orderData']   =  $orderDetails;
						  $orders['Title']   =  'Order Details';
              $orders['Menu'] 				= 'User';
              $orders['SubMenu'] 			= '';
              $orders['SelectMenu']         = '';

return View('Admin/Order/order_detials')->with($orders);
	   
   }

   public function printShipmentLabel($id)
   {

    $curl = curl_init();

    $ship_da = [
      'ClientInfo' => [
        'UserName' => 'reem@reem.com',
        'Password' => '123456789',
        'Version' => 'v1',
        'AccountNumber' => '20016',
        'AccountPin' => '331421',
        'AccountEntity' => 'AMM',
        'AccountCountryCode' => 'JO',
        'Source' => 24,
      ],
      'LabelInfo' => [
        'ReportID' => 9201,
        'ReportType' => 'URL',
      ],
      'OriginEntity' => 'AMM',
      'ProductGroup' => 'EXP',
      'ShipmentNumber' => $id,
      'Transaction' => [
        'Reference1' => '',
        'Reference2' => '',
        'Reference3' => '',
        'Reference4' => '',
        'Reference5' => '',
      ],
    ];


    $ship_da = json_encode($ship_da, true);
    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://ws.dev.aramex.net/ShippingAPI.V2/Shipping/Service_1_0.svc/json/PrintLabel',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_POSTFIELDS =>$ship_da,
      CURLOPT_HTTPHEADER => array(
        'Content-Type: application/json',
        'Accept: application/json'
      ),
    ));

    $response = curl_exec($curl);

    $result = json_decode($response,true);

    if ($result['HasErrors']) {
    }else{
      $pdf = $result['ShipmentLabel']['LabelURL'];
      return redirect()->to($pdf);
    }

    curl_close($curl);
    echo $response;
  }

   public function printPickupLable($id)
   {
    $shipment = \DB::table('order_aramex_shipping_details')->where(['id' => $id, 's_status' => 'NEW'])->first();
    // echo "<pre>";print_r($shipment);"</pre>";exit;
    return redirect()->to($shipment->label_url);
   }
   
   public function ShipUserOrder(Request $request)
   {

    $pickup_date = date('Y-m-d 09:00:00', strtotime(' +2 day'));
    $ready_time = date('Y-m-d 09:00:00', strtotime(' +2 day'));
    $last_pickup_time = date('Y-m-d 17:00:00', strtotime(' +3 day'));
    $closing_time = date('Y-m-d 17:00:00', strtotime(' +3 day'));

    $orderDetails = DB::table('orders')
    ->select('*')
    ->where('id',$request->order_id)
    ->first();

    $shipper_address = json_decode($orderDetails->billing_address);

    $billingAddress = DB::table('user_authentication_details')
    ->select('*')
    ->where('email',$orderDetails->billing_email)
    ->first();

    $shipping_date_time = date('Y-m-d 09:00:00', strtotime(' +4 day'));;
    $due_date = date('Y-m-d 17:00:00', strtotime(' +4 day'));;

    $pickup_date = \Carbon\Carbon::parse($pickup_date)->timestamp;
    $ready_time = \Carbon\Carbon::parse($ready_time)->timestamp;
    $last_pickup_time = \Carbon\Carbon::parse($last_pickup_time)->timestamp;
    $closing_time = \Carbon\Carbon::parse($closing_time)->timestamp;
    $shipping_date_time = \Carbon\Carbon::parse($shipping_date_time)->timestamp;
    $due_date = \Carbon\Carbon::parse($due_date)->timestamp;



/*create shipment */



    $curl = curl_init();

   $shiping_date_time = $shipping_date_time;
 $end_date_time = $due_date;

$arrayVar = [
    "ClientInfo" => [
        "UserName" => "reem@reem.com",
        "Password" => "123456789",
        "Version" => "1.0",
        "AccountNumber" => "4004636",
        "AccountPin" => "432432",
        "AccountEntity" => "RUH",
        "AccountCountryCode" => "SA",
        "Source" => 24,
    ],
    "LabelInfo" => null,
    "Shipments" => [
        [
            "Reference1" => "",
            "Reference2" => "",
            "Reference3" => "",
            "Shipper" => [
                "Reference1" => "",
                "Reference2" => "",
                "AccountNumber" => "4004636",
                "PartyAddress" => [
                 "Line1" => "Horizons Rareness Trading EST",
                 "Line2" => "office No.2",
                 "Line3" => "floor No. 1",
                 "City" => "Riyadh",
                 "StateOrProvinceCode" => "Saudi Arabia",
                 "PostCode" => "12173",
                 "CountryCode" => "SA",
                 "Longitude" => 0,
                 "Latitude" => 0,
                 "BuildingNumber" => 2,
                 "BuildingName" => null,
                 "Floor" => 1,
                 "Apartment" => null,
                 "POBox" => null,
                 "Description" => null,
               ],
                "Contact" => [
                  "Department" => "Marketing",
                  "PersonName" => "Alaa Hamdani",
                  "Title" => "",
                  "CompanyName" => "Horizons Rareness Trading EST",
                  "PhoneNumber1" => "0112347191",
                  "PhoneNumber1Ext" => "107",
                  "PhoneNumber2" => "",
                  "PhoneNumber2Ext" => "",
                  "FaxNumber" => "",
                  "CellPhone" => "0558865450",
                  "EmailAddress" => "marketing@horizons-retail.com",
                  "Type" => "",
                ],
            ],
            "Consignee" => [
              "Reference1" => "",
              "Reference2" => "",
              "AccountNumber" => "4004636",
              "PartyAddress" => [
                "Line1" => $shipper_address->address,
                "Line2" => "",
                "Line3" => "",
                "City" => $shipper_address->city,
                "StateOrProvinceCode" => $shipper_address->state,
                "PostCode" => $shipper_address->postcode,
                "CountryCode" => $shipper_address->country,
                "Longitude" => 0,
                "Latitude" => 0,
                "BuildingNumber" => "",
                "BuildingName" => "",
                "Floor" => "",
                "Apartment" => "",
                "POBox" => null,
                "Description" => "",
              ],
              "Contact" => [
                "Department" => "",
                "PersonName" => $shipper_address->name,
                "Title" => "",
                "CompanyName" => $shipper_address->name,
                "PhoneNumber1" => $billingAddress->mobile,
                "PhoneNumber1Ext" => $billingAddress->country_code,
                "PhoneNumber2" => "",
                "PhoneNumber2Ext" => "",
                "FaxNumber" => "",
                "CellPhone" => $billingAddress->mobile,
                "EmailAddress" => $shipper_address->email,
                "Type" => "",
              ],
            ],
            "ShippingDateTime" => "/Date(".$shiping_date_time."000-0500)/",
            "DueDate" => "/Date(".$end_date_time."000-0500)/",
            "Comments" => "",
            "PickupLocation" => "",
            "OperationsInstructions" => "",
            "AccountingInstrcutions" => "",
            "Details" => [
                "Dimensions" => null,
                "ActualWeight" => ["Unit" => "KG", "Value" => $request->weight],
                "ChargeableWeight" => null,
                "DescriptionOfGoods" => "Bags",
                "GoodsOriginCountry" => "SAU",
                "NumberOfPieces" => 1,
                "ProductGroup" => "EXP",
                "ProductType" => "PDX",
                "PaymentType" => "P",
                "PaymentOptions" => "",
                "CustomsValueAmount" => null,
                "CashOnDeliveryAmount" => null,
                "InsuranceAmount" => null,
                "CashAdditionalAmount" => null,
                "CashAdditionalAmountDescription" => "",
                "CollectAmount" => null,
                "Services" => "",
                "Items" => [],
            ],
            "Attachments" => [],
            "ForeignHAWB" => '',
            "TransportType " => 0,
            "PickupGUID" => "",
            "Number" => null,
            "ScheduledDelivery" => null,
        ],
    ],
    "Transaction" => [
        "Reference1" => "",
        "Reference2" => "",
        "Reference3" => "",
        "Reference4" => "",
        "Reference5" => "",
    ],
];
// echo "<pre>";print_r($arrayVar);"</pre>";exit;
$myArrayVar = json_encode($arrayVar,1);

    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://ws.dev.aramex.net/ShippingAPI.V2/Shipping/Service_1_0.svc/json/CreateShipments',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_POSTFIELDS =>$myArrayVar,
      CURLOPT_HTTPHEADER => array(
        'Content-Type: application/json',
        'Accept: application/json'
    ),
  ));

    $response = curl_exec($curl);

    $result = json_decode($response,true);


   $message = '';
    if ($result['HasErrors']) {
      foreach ($result['Notifications'] as $key => $Notifications) {
        $message .= $Notifications['Message'].', ';
      }

      return Redirect::back()->withErrors(['msg' => $message]);

    }else{
      

      DB::table('order_aramex_shipping_details')->insert(
        [
          'ordered_order_id' => $request->order_id, 
          'user_order_id' => $orderDetails->order_id,
          'user_id' => $request->user_id,
          'shipment_id' => $result['Shipments'][0]['ID']
        ]
      );

    }


/*end create shipment */
    $arrayVar = [
      "ClientInfo" => [
        "UserName" => "reem@reem.com",
        "Password" => "123456789",
        "Version" => "1.0",
        "AccountNumber" => "4004636",
        "AccountPin" => "432432",
        "AccountEntity" => "RUH",
        "AccountCountryCode" => "SA",
        "Source" => 24,
      ],
      "LabelInfo" => ["ReportID" => 9201, "ReportType" => "URL"],
      "Pickup" => [
        "PickupAddress" => [
          "Line1" => "Horizons Rareness Trading EST",
          "Line2" => "office No.2",
          "Line3" => "floor No. 1",
          "City" => "Riyadh",
          "StateOrProvinceCode" => "Saudi Arabia",
          "PostCode" => "12173",
          "CountryCode" => "SA",
          "Longitude" => 0,
          "Latitude" => 0,
          "BuildingNumber" => 2,
          "BuildingName" => null,
          "Floor" => 1,
          "Apartment" => null,
          "POBox" => null,
          "Description" => null,
        ],
        "PickupContact" => [
          "Department" => "Marketing",
          "PersonName" => "Alaa Hamdani",
          "Title" => "",
          "CompanyName" => "Horizons Rareness Trading EST",
          "PhoneNumber1" => "0112347191",
          "PhoneNumber1Ext" => "107",
          "PhoneNumber2" => "",
          "PhoneNumber2Ext" => "",
          "FaxNumber" => "",
          "CellPhone" => "0558865450",
          "EmailAddress" => "marketing@horizons-retail.com",
          "Type" => "",
        ],
        "PickupLocation" => "Riyadh, Saudi Arabia",
        "PickupDate" => "/Date(".$pickup_date."000-0500)/",
        "ReadyTime" => "/Date(".$ready_time."000-0500)/",
        "LastPickupTime" => "/Date(".$last_pickup_time."000-0500)/",
        "ClosingTime" => "/Date(".$closing_time."000-0500)/",
        "Comments" => "",
        "Reference1" => $result['Shipments'][0]['ID'],
        "Reference2" => "",
        "Vehicle" => "",
        "Shipments" => [
          [
            "Reference1" => "",
            "Reference2" => "",
            "Reference3" => "",
            "Shipper" => [
              "Reference1" => "",
              "Reference2" => "",
              "AccountNumber" => "4004636",
              "PartyAddress" => [
                "Line1" => "Horizons Rareness Trading EST",
                "Line2" => "office No.2",
                "Line3" => "floor No. 1",
                "City" => "Riyadh",
                "StateOrProvinceCode" => "Saudi Arabia",
                "PostCode" => "12173",
                "CountryCode" => "SA",
                "Longitude" => 0,
                "Latitude" => 0,
                "BuildingNumber" => 2,
                "BuildingName" => null,
                "Floor" => 1,
                "Apartment" => null,
                "POBox" => null,
                "Description" => null,
              ],
              "Contact" => [
                "Department" => "Marketing",
                "PersonName" => "Alaa Hamdani",
                "Title" => "",
                "CompanyName" => "Horizons Rareness Trading EST",
                "PhoneNumber1" => "0112347191",
                "PhoneNumber1Ext" => "107",
                "PhoneNumber2" => "",
                "PhoneNumber2Ext" => "",
                "FaxNumber" => "",
                "CellPhone" => "0558865450",
                "EmailAddress" => "marketing@horizons-retail.com",
                "Type" => "",
              ],
            ],
            "Consignee" => [
              "Reference1" => "",
              "Reference2" => "",
              "AccountNumber" => "4004636",
              "PartyAddress" => [
                "Line1" => $shipper_address->address,
                "Line2" => "",
                "Line3" => "",
                "City" => $shipper_address->city,
                "StateOrProvinceCode" => $shipper_address->state,
                "PostCode" => $shipper_address->postcode,
                "CountryCode" => $shipper_address->country,
                "Longitude" => 0,
                "Latitude" => 0,
                "BuildingNumber" => "",
                "BuildingName" => "",
                "Floor" => "",
                "Apartment" => "",
                "POBox" => null,
                "Description" => "",
              ],
              "Contact" => [
                "Department" => "",
                "PersonName" => $shipper_address->name,
                "Title" => "",
                "CompanyName" => $shipper_address->name,
                "PhoneNumber1" => $billingAddress->mobile,
                "PhoneNumber1Ext" => $billingAddress->country_code,
                "PhoneNumber2" => "",
                "PhoneNumber2Ext" => "",
                "FaxNumber" => "",
                "CellPhone" => $billingAddress->mobile,
                "EmailAddress" => $shipper_address->email,
                "Type" => "",
              ],
            ],
            "ShippingDateTime" => "/Date(".$shipping_date_time."000-0500)/",
            "DueDate" => "/Date(".$due_date."000-0500)/",
            "Comments" => "Comments ...",
            "PickupLocation" => "Reception",
            "OperationsInstructions" => "Fragile",
            "AccountingInstrcutions" => "Get us a discount please",
            "Details" => [
              "Dimensions" => null,
              "ActualWeight" => ["Unit" => "KG", "Value" => $request->weight],
              "ChargeableWeight" => null,
              "DescriptionOfGoods" => "Bags",
              "GoodsOriginCountry" => "SA",
              "NumberOfPieces" => 1,
              "ProductGroup" => "EXP",
              "ProductType" => "PDX",
              "PaymentType" => "P",//P
              "PaymentOptions" => "",
              "CustomsValueAmount" => null,
              "CashOnDeliveryAmount" => null,
              "InsuranceAmount" => null,
              "CashAdditionalAmount" => null,
              "CashAdditionalAmountDescription" => "",
              "CollectAmount" => null,
              "Services" => "",
              "Items" => [],
              "DeliveryInstructions" => null,
            ],
            "Attachments" => [],
            "ForeignHAWB" => '',
            "TransportType " => 0,
            "PickupGUID" => null,
            "Number" => "",
            "ScheduledDelivery" => null,
          ],
        ],
        "PickupItems" => [
          [
            "ProductGroup" => "EXP",
            "ProductType" => "PDX",
            "NumberOfShipments" => 1,
            "PackageType" => "Box",
            "Payment" => "P",
            "ShipmentWeight" => ["Unit" => "KG", "Value" => $request->weight],
            "ShipmentVolume" => null,
            "NumberOfPieces" => 1,
            "CashAmount" => null,
            "ExtraCharges" => null,
            "ShipmentDimensions" => [
              "Length" => 0,
              "Width" => 0,
              "Height" => 0,
              "Unit" => "",
            ],
            "Comments" => "Test",
          ],
        ],
        "Status" => "Ready",
        "ExistingShipments" => null,
        "Branch" => "",
        "RouteCode" => "",
      ],
      "Transaction" => [
        "Reference1" => "",
        "Reference2" => "",
        "Reference3" => "",
        "Reference4" => "",
        "Reference5" => "",
      ],
    ];

    $myArrayVar = json_encode($arrayVar, true);

    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://ws.dev.aramex.net/ShippingAPI.V2/Shipping/Service_1_0.svc/json/CreatePickup',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_POSTFIELDS =>$myArrayVar,
      CURLOPT_HTTPHEADER => array(
        'Content-Type: application/json',
        'Accept: application/json'
      ),
    ));

    $response = curl_exec($curl);

    $result = json_decode($response,true);

    // echo "<pre>";print_r($result);"</pre>";exit;

    curl_close($curl);
    $message = '';
    if ($result['HasErrors']) {
      foreach ($result['Notifications'] as $key => $Notifications) {
        $message .= $Notifications['Message'].', ';
      }

      return Redirect::back()->withErrors(['msg' => $message]);

    }else{
      DB::table('order_aramex_shipping_details')->where(
        'ordered_order_id', $request->order_id
      )->update(
        [          
          'label_url' => $result['ProcessedPickup']['ProcessedShipments'][0]['ShipmentLabel']['LabelURL'],
          's_awb_code' => $result['ProcessedPickup']['ProcessedShipments'][0]['ForeignHAWB'],
          's_status' => 'NEW',
          'packet_weight' => $result['ProcessedPickup']['ProcessedShipments'][0]['ShipmentDetails']['ChargeableWeight']['Value'],
          's_order_id' => $result['ProcessedPickup']['ID'],
          's_shipment_id' => $result['ProcessedPickup']['ProcessedShipments'][0]['ID'],
        ]
      );
      return redirect()->back()->with('success', 'Your shipment Created successfully!');   
    }

  }

   public function ShipUserOrderOld(Request $request)
   {
     $shipping_time_initial = time()+50000;
     $shipping_time = $shipping_time_initial.'303-0500';
     $due_time_initial = time()+60000;
     $due_time = $due_time_initial.'303-0500';
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, "https://ws.dev.aramex.net/ShippingAPI.V2/Shipping/Service_1_0.svc/json/CreateShipments");
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, 
    "{\"ClientInfo\":{\"UserName\":\"reem@reem.com\",\"Password\":\"123456789\",\"Version\":\"1.0\",\"AccountNumber\":\"4004636\",\"AccountPin\":\"432432\",\"AccountEntity\":\"RUH\",\"AccountCountryCode\":\"SA\",\"Source\":24},\"LabelInfo\":null,\"Shipments\":[{\"Reference1\":\"\",\"Reference2\":\"\",\"Reference3\":\"\",\"Shipper\":{\"Reference1\":\"\",\"Reference2\":\"\",\"AccountNumber\":\"4004636\",\"PartyAddress\":{\"Line1\":\"Test\",\"Line2\":\"\",\"Line3\":\"\",\"City\":\"Amman\",\"StateOrProvinceCode\":\"\",\"PostCode\":\"\",\"CountryCode\":\"JO\",\"Longitude\":0,\"Latitude\":0,\"BuildingNumber\":null,\"BuildingName\":null,\"Floor\":null,\"Apartment\":null,\"POBox\":null,\"Description\":null},\"Contact\":{\"Department\":\"\",\"PersonName\":\"aramex\",\"Title\":\"\",\"CompanyName\":\"aramex\",\"PhoneNumber1\":\"009625515111\",\"PhoneNumber1Ext\":\"\",\"PhoneNumber2\":\"\",\"PhoneNumber2Ext\":\"\",\"FaxNumber\":\"\",\"CellPhone\":\"9677956000200\",\"EmailAddress\":\"test@test.com\",\"Type\":\"\"}},\"Consignee\":{\"Reference1\":\"\",\"Reference2\":\"\",\"AccountNumber\":\"\",\"PartyAddress\":{\"Line1\":\"Test\",\"Line2\":\"\",\"Line3\":\"\",\"City\":\"Duabi\",\"StateOrProvinceCode\":\"\",\"PostCode\":\"\",\"CountryCode\":\"AE\",\"Longitude\":0,\"Latitude\":0,\"BuildingNumber\":\"\",\"BuildingName\":\"\",\"Floor\":\"\",\"Apartment\":\"\",\"POBox\":null,\"Description\":\"\"},\"Contact\":{\"Department\":\"\",\"PersonName\":\"aramex\",\"Title\":\"\",\"CompanyName\":\"aramex\",\"PhoneNumber1\":\"009625515111\",\"PhoneNumber1Ext\":\"\",\"PhoneNumber2\":\"\",\"PhoneNumber2Ext\":\"\",\"FaxNumber\":\"\",\"CellPhone\":\"9627956000200\",\"EmailAddress\":\"test@test.com\",\"Type\":\"\"}},\"ThirdParty\":{\"Reference1\":\"\",\"Reference2\":\"\",\"AccountNumber\":\"\",\"PartyAddress\":{\"Line1\":\"\",\"Line2\":\"\",\"Line3\":\"\",\"City\":\"\",\"StateOrProvinceCode\":\"\",\"PostCode\":\"\",\"CountryCode\":\"\",\"Longitude\":0,\"Latitude\":0,\"BuildingNumber\":null,\"BuildingName\":null,\"Floor\":null,\"Apartment\":null,\"POBox\":null,\"Description\":null},\"Contact\":{\"Department\":\"\",\"PersonName\":\"\",\"Title\":\"\",\"CompanyName\":\"\",\"PhoneNumber1\":\"\",\"PhoneNumber1Ext\":\"\",\"PhoneNumber2\":\"\",\"PhoneNumber2Ext\":\"\",\"FaxNumber\":\"\",\"CellPhone\":\"\",\"EmailAddress\":\"\",\"Type\":\"\"}},\"ShippingDateTime\":\"\\/Date($shipping_time)\\/\",\"DueDate\":\"\\/Date($due_time)\\/\",\"Comments\":\"\",\"PickupLocation\":\"\",\"OperationsInstructions\":\"\",\"AccountingInstrcutions\":\"\",\"Details\":{\"Dimensions\":null,\"ActualWeight\":{\"Unit\":\"KG\",\"Value\":0.5},\"ChargeableWeight\":null,\"DescriptionOfGoods\":\"Books\",\"GoodsOriginCountry\":\"JO\",\"NumberOfPieces\":1,\"ProductGroup\":\"EXP\",\"ProductType\":\"PDX\",\"PaymentType\":\"P\",\"PaymentOptions\":\"\",\"CustomsValueAmount\":null,\"CashOnDeliveryAmount\":null,\"InsuranceAmount\":null,\"CashAdditionalAmount\":null,\"CashAdditionalAmountDescription\":\"\",\"CollectAmount\":null,\"Services\":\"\",\"Items\":[]},\"Attachments\":[],\"ForeignHAWB\":\"\",\"TransportType \":0,\"PickupGUID\":\"\",\"Number\":null,\"ScheduledDelivery\":null}],\"Transaction\":{\"Reference1\":\"\",\"Reference2\":\"\",\"Reference3\":\"\",\"Reference4\":\"\",\"Reference5\":\"\"}}");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $headers = [
      'Content-Type: application/json',
      'Accept: application/json',
     ];
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    $results = curl_exec($ch);
    curl_close($ch);
      print_r($results);
    exit(0);
    $results = json_decode($results,true);

            
  
           
   }
   
  public function placeOrder($token,$orderDetails,$billingAddress,$billingOrderDetails,$request)
  {
      $length= $request->length;
      $breadth= $request->breadth;
      $height= $request->height;
      $weight= $request->weight;
    //   dd($weight);

    //  dd($orderDetails);
    //  dd($billingAddress);
    //  dd($billingOrderDetails);

$orderId =$orderDetails->order_id;

$html='';
$i=1;
foreach($billingOrderDetails as $key=>$value )
{
   $html.='{
       "name": "'.$value->name.'",
       "sku": "sku'.$i.'",
      "units": "'.$value->quantity.'",
       "selling_price": "'.$value->price.'",
       "discount": "",
       "tax": "",
       "hsn": 441122
    },';
 $i++;   
}

$html = rtrim($html,",");
// dd($html);
//   dd($billingOrderDetails); 

    // $data = '{"order_id": "'.$orderId.'",
    //   "order_date": "'.$orderDetails->txn_date.'",
    //   "pickup_location": "cureroot",
    //   "billing_customer_name": "'.$orderDetails->billing_name.'",
    //   "billing_last_name": "",
    //   "billing_address": "'.$billingAddress->street_Address.'",
    //   "billing_address_2": "",
    //   "billing_city": "'.$billingAddress->city.'",
    //   "billing_pincode": "'.$billingAddress->pin_code.'",
    //   "billing_state": "'.$billingAddress->state.'",
    //   "billing_country": "'.$billingAddress->country.'",
    //   "billing_email": "'.$orderDetails->billing_email.'",
    //   "billing_phone": "'.$orderDetails->billing_tel.'",
    //   "shipping_is_billing": true,
    //   "shipping_customer_name": "",
    //   "shipping_last_name": "",
    //   "shipping_address": "",
    //   "shipping_address_2": "",
    //   "shipping_city": "",
    //   "shipping_pincode": "",
    //   "shipping_country": "",
    //   "shipping_state": "",
    //   "shipping_email": "",
    //   "shipping_phone": "",
    //   "order_items": ['.$html.'],
    //   "payment_method": "Prepaid",
    //   "shipping_charges": 100,
    //   "giftwrap_charges": 0,
    //   "transaction_charges": 0,
    //   "total_discount": 0,
    //   "sub_total": "'.$orderDetails->txn_amount.'",
    //   "length": '.$length.',
    //   "breadth": '.$breadth.',
    //   "height": '.$height.',
    //   "weight": '.$weight.'
    // 	}';
    	
    // dd($data);





     $curl = curl_init();
  curl_setopt_array($curl, array(
    CURLOPT_URL => "https://apiv2.shiprocket.in/v1/external/orders/create/adhoc",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "POST",
    CURLOPT_POSTFIELDS =>'{"order_id": "'.$orderId.'",
  "order_date": "'.$orderDetails->txn_date.'",
  "pickup_location": "ojasvin",
  "billing_customer_name": "'.$orderDetails->billing_name.'",
  "billing_last_name": "",
  "billing_address": "'.$billingAddress->street_Address.'",
  "billing_address_2": "",
  "billing_city": "'.$billingAddress->city.'",
  "billing_pincode": "'.$billingAddress->pin_code.'",
  "billing_state": "'.$billingAddress->state.'",
  "billing_country": "'.$billingAddress->country.'",
  "billing_email": "'.$orderDetails->billing_email.'",
  "billing_phone": "'.$orderDetails->billing_tel.'",
  "shipping_is_billing": true,
  "shipping_customer_name": "",
  "shipping_last_name": "",
  "shipping_address": "",
  "shipping_address_2": "",
  "shipping_city": "",
  "shipping_pincode": "",
  "shipping_country": "",
  "shipping_state": "",
  "shipping_email": "",
  "shipping_phone": "",
  "order_items": ['.$html.'],
  "payment_method": "Prepaid",
  "shipping_charges": 1,
  "giftwrap_charges": 0,
  "transaction_charges": 0,
  "total_discount": 0,
  "sub_total": "'.$orderDetails->txn_amount.'",
   "length": '.$length.',
   "breadth": '.$breadth.',
   "height": '.$height.',
   "weight": '.$weight.'
	}',
    CURLOPT_HTTPHEADER => array(
      "Content-Type: application/json",
	   "Authorization: Bearer $token"
    ),
  ));
  $SR_login_Response = curl_exec($curl);
  curl_close($curl);
  
  return $SR_login_Response;
  
  //$SR_login_Response_out = json_decode($SR_login_Response);
  echo '<pre>';
  
//   print_r($SR_login_Response);
//         exit();

      
  }
  
  public function PickupTracking($id){

    $shipment = \DB::table('order_aramex_shipping_details')->where(['id' => $id, 's_status' => 'NEW'])->first();


    $jayParsedAry = [
      "ClientInfo" => [
        "UserName" => "reem@reem.com",
        "Password" => "123456789",
        "Version" => "1.0",
        "AccountNumber" => "4004636",
        "AccountPin" => "432432",
        "AccountEntity" => "RUH",
        "AccountCountryCode" => "SA",
        "Source" => 24,
      ],
      "Reference" => $shipment->s_order_id, 
      "Transaction" => [
        "Reference1" => "", 
        "Reference2" => "", 
        "Reference3" => "", 
        "Reference4" => "", 
        "Reference5" => "" 
      ] 
    ]; 

    $jayParsedAry = json_encode($jayParsedAry, true);

    $curl = curl_init();

    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://ws.dev.aramex.net/ShippingAPI.V2/Tracking/Service_1_0.svc/json/TrackPickup',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_POSTFIELDS =>$jayParsedAry,
      CURLOPT_HTTPHEADER => array(
        'Content-Type: application/json',
        'Accept: application/json'
      ),
    ));

    $response = curl_exec($curl);

    $result = json_decode($response,1);

    curl_close($curl);
    if (!$result['HasErrors']) {
      return Redirect::back()->withErrors(['msg' => $result['LastStatus']]);
    }
    
  }

    public function ShipmentTracking($id)
    {
      $shipment = \DB::table('order_aramex_shipping_details')->where(['shipment_id' => $id, 's_status' => 'NEW'])->first();

      $curl = curl_init();

      $jayParsedAry =  [
        'ClientInfo' => [
          'UserName' => 'reem@reem.com',
          'Password' => '123456789',
          'Version' => '1.0',
          'AccountNumber' => '4004636',
          'AccountPin' => '432432',
          'AccountEntity' => 'RUH',
          'AccountCountryCode' => 'SA',
          'Source' => 24,
        ],
        'GetLastTrackingUpdateOnly' => false,
        'Shipments' => [
          0 => $shipment->shipment_id,
        ],
        'Transaction' => [
          'Reference1' => '',
          'Reference2' => '',
          'Reference3' => '',
          'Reference4' => '',
          'Reference5' => '',
        ],
      ];

      $jayParsedAry = json_encode($jayParsedAry, true);


      curl_setopt_array($curl, array(
        CURLOPT_URL => 'https://ws.dev.aramex.net/ShippingAPI.V2/Tracking/Service_1_0.svc/json/TrackShipments',
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS =>$jayParsedAry,
        CURLOPT_HTTPHEADER => array(
          'Content-Type: application/json',
          'Accept: application/json'
        ),
      ));

      $response = curl_exec($curl);

      $result = json_decode($response,1);

      if(!$result['HasErrors']){
        curl_close($curl);

        return redirect()->back()->with('success', $result['TrackingResults'][0]['Value'][0]['UpdateDescription'].', '.$result['TrackingResults'][0]['Value'][1]['UpdateDescription']);
      }else{

      }


    }

    public function userOrdertracking($token)
    {

        
        $curl = curl_init();
  curl_setopt_array($curl, array(
    CURLOPT_URL => "https://apiv2.shiprocket.in/v1/external/courier/track?order_id=656756667",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
	CURLOPT_HTTPGET  => true,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_HTTPHEADER => array(
	   "Authorization: Bearer $token"
    ),
  ));
  $SR_login_Response = curl_exec($curl);
  curl_close($curl);
  //$SR_login_Response_out = json_decode($SR_login_Response);
  echo '<pre>';
  print_r($SR_login_Response);
  exit();
    }
    
        public function CancelOrder($token,$request)
    {
     $orderId = DB::table('order_shipping_details')->select('s_order_id')->where(['ordered_order_id'=>$request->order_id])->first();  
     $shipmentorderid =$orderId->s_order_id;

    $curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://apiv2.shiprocket.in/v1/external/orders/cancel",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS =>"{\n  \"ids\": [$shipmentorderid]\n}",
  CURLOPT_HTTPHEADER => array(
    "Content-Type: application/json",
    "Authorization: Bearer $token"
  ),
));

$response = curl_exec($curl);
curl_close($curl);

return $response;

    }
    
public function GenerateAWBforShipment($token,$shipment_id)
{
     
        // dd($shipment_id);
    //  $orderId = DB::table('order_shipping_details')->select('s_order_id')->where(['ordered_order_id'=>$request->order_id])->first();  
    //  $shipmentorderid =$orderId->s_order_id;

  $curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://apiv2.shiprocket.in/v1/external/courier/assign/awb',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "shipment_id": '.$shipment_id.',
    "courier_id": "",
    "status": ""
}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json',
    'Authorization: Bearer $token'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;


    }   
   
   
public function ShipOrder($token)
    {
        
     $orderId = DB::table('order_shipping_details')->select('s_shipment_id')->where(['ordered_order_id'=>$request->order_id])->first();  
     $shipmentorderid =$orderId->s_shipment_id;

    
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://apiv2.shiprocket.in/v1/external/courier/assign/awb',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "shipment_id": "",
    "courier_id": ""
}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json',
    'Authorization: Bearer $token'
  ),
));

$response = curl_exec($curl);

curl_close($curl);

return $response;
    }
     
     
public function CheckCourierServiceabilityOrder()
    {
        
             $Data = $this->OrderModel->checkShipingToken(); 
             $token=$Data[0]->token;
             $TokenDate=$Data[0]->add_date;
             $tokenTimeStr = strtotime($TokenDate);
             $currentTimeStr = strtotime(date("Y-m-d H:i:s"));
             $diff_time = $currentTimeStr-$tokenTimeStr;

             if($diff_time < 86400)
             {
                 
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://apiv2.shiprocket.in/v1/external/courier/serviceability/',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_POSTFIELDS =>'{
    "shipment_id": "'.$shipment_id.'",
    "courier_id": ""
}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json',
    'Authorization: Bearer $token'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;

// return $response;

             }
             else
             {
             $token = $this->generateToken();
             $status = $requestData['status'];    
             $tokenArray['token'] = $token;
             $tokenArray['add_date'] = date("Y-m-d H:i:s");
             $tokenStatus = $this->OrderModel->submitShiprocketToken($tokenArray);  
             
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://apiv2.shiprocket.in/v1/external/courier/serviceability/',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json',
    'Authorization: Bearer $token'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
// return $response;

             }
    

    }
    
    public function RequestforShipmentPickupOrder($token)
    {
    //  $orderId = DB::table('order_shipping_details')->select('s_shipment_id')->where(['ordered_order_id'=>$request->order_id])->first();  
    //  $shipmentorderid =$orderId->s_shipment_id;

    
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://apiv2.shiprocket.in/v1/external/courier/generate/pickup',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
	"shipment_id": [""]
	
}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json',
    'Authorization: Bearer $token'
  ),
));

$response = curl_exec($curl);

curl_close($curl);

return $response;

}


	
}