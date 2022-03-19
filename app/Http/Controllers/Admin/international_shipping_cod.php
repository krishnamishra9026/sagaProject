<?php
Request :: 
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://ws.aramex.net/ShippingAPI.V2/Shipping/Service_1_0.svc/json/CreateShipments',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
  "ClientInfo": {
    "UserName": "armx.ruh.it@gmail.com",
    "Password": "YUre@9982",
    "Version": "v1",
    "AccountNumber": "4004636",
    "AccountPin": "442543",
    "AccountEntity": "RUH",
    "AccountCountryCode": "SA",
    "Source": 24
  },
  "LabelInfo": null,
  "Shipments": [
    {
      "Reference1": "",
      "Reference2": "",
      "Reference3": "",
      "Shipper": {
        "Reference1": "",
        "Reference2": "",
        "AccountNumber": "4004636",
        "PartyAddress": {
          "Line1": "Horizons Rareness Trading EST",
          "Line2": "office No.2",
          "Line3": "floor No. 1",
          "City": "Riyadh",
          "StateOrProvinceCode": "Saudi Arabia",
          "PostCode": "12173",
          "CountryCode": "SA",
          "Longitude": 0,
          "Latitude": 0,
          "BuildingNumber": 2,
          "BuildingName": null,
          "Floor": 1,
          "Apartment": null,
          "POBox": null,
          "Description": null
        },
        "Contact": {
          "Department": "Marketing",
          "PersonName": "Alaa Hamdani",
          "Title": "",
          "CompanyName": "Horizons Rareness Trading EST",
          "PhoneNumber1": "0112347191",
          "PhoneNumber1Ext": "107",
          "PhoneNumber2": "",
          "PhoneNumber2Ext": "",
          "FaxNumber": "",
          "CellPhone": "0558865450",
          "EmailAddress": "marketing@horizons-retail.com",
          "Type": ""
        }
      },
      "Consignee": {
        "Reference1": "",
        "Reference2": "",
        "AccountNumber": "4004636",
        "PartyAddress": {
          "Line1": "VIJAY NAGAR BBK",
          "Line2": "",
          "Line3": "",
          "City": "New Delhi",
          "StateOrProvinceCode": "Delhi",
          "PostCode": "110093",
          "CountryCode": "IN",
          "Longitude": 0,
          "Latitude": 0,
          "BuildingNumber": "",
          "BuildingName": "",
          "Floor": "",
          "Apartment": "",
          "POBox": null,
          "Description": ""
        },
        "Contact": {
          "Department": "",
          "PersonName": "Krishna Mishra Krishna",
          "Title": "",
          "CompanyName": "Krishna Mishra Krishna",
          "PhoneNumber1": "0112347191",
          "PhoneNumber1Ext": "",
          "PhoneNumber2": "",
          "PhoneNumber2Ext": "",
          "FaxNumber": "",
          "CellPhone": "0112347191",
          "EmailAddress": "er.krishna.mishra@gmail.com",
          "Type": ""
        }
      },
      "ShippingDateTime": "/Date(1645693200000-0500)/",
      "DueDate": "/Date(1645722000000-0500)/",
      "Comments": "",
      "PickupLocation": "",
      "OperationsInstructions": "",
      "AccountingInstrcutions": "",
      "Details": {
        "Dimensions": null,
        "ActualWeight": {
          "Unit": "KG",
          "Value": "2"
        },
        "ChargeableWeight": null,
        "DescriptionOfGoods": "Bags",
        "GoodsOriginCountry": "SA",
        "NumberOfPieces": 1,
        "ProductGroup": "EXP",
        "ProductType": "EPX",
        "PaymentType": "P",
        "PaymentOptions": "",
        "CustomsValueAmount": null,
        "CashOnDeliveryAmount": {
          "CurrencyCode": "SAR",
          "Value": "676.50"
        },
        "InsuranceAmount": null,
        "CashAdditionalAmount": null,
        "CashAdditionalAmountDescription": "",
        "CollectAmount": null,
        "Services": "CODS",
        "Items": [
          
        ]
      },
      "Attachments": [
        
      ],
      "ForeignHAWB": "",
      "TransportType ": 0,
      "PickupGUID": "",
      "Number": null,
      "ScheduledDelivery": null
    }
  ],
  "Transaction": {
    "Reference1": "",
    "Reference2": "",
    "Reference3": "",
    "Reference4": "",
    "Reference5": ""
  }
}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json',
    'Accept: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;


Response ::


{
    "Transaction": {
        "Reference1": "",
        "Reference2": "",
        "Reference3": "",
        "Reference4": "",
        "Reference5": ""
    },
    "Notifications": [],
    "HasErrors": true,
    "Shipments": [
        {
            "ID": null,
            "Reference1": "",
            "Reference2": "",
            "Reference3": "",
            "ForeignHAWB": null,
            "HasErrors": true,
            "Notifications": [
                {
                    "Code": "REQ38",
                    "Message": "Product Type is dutiable. Customs Amount is required"
                }
            ],
            "ShipmentLabel": null,
            "ShipmentDetails": null,
            "ShipmentAttachments": []
        }
    ]
}