import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';

class api {
  String data1;
  String data2;
  String name;
  String type;
  String active;
  String drymass;
  String description;
  String fuel1;
  String fuel2;
  String launchpayloadmass;
  String devpartener;
  dynamic img;
  String thrustertype;


  api({this.data1, this.data2});

  Future<void> getdata() async{


    try {

      Response response = await get('https://api.spacexdata.com/v3/dragons');
      List data = jsonDecode(response.body);
      name = data[0]['name'];
      type = data[0]['type'];
      bool hello = data[0]['active'];
      active = hello.toString();
      int num = data[0]['dry_mass_kg'];
      drymass = num.toString();
      fuel1 = data[0]['thrusters'][0]['fuel_1'];
      fuel2 = data[0]['thrusters'][0]['fuel_2'];
      int launch = data[0]['launch_payload_mass']['kg'];
      launchpayloadmass = launch.toString() ;
      thrustertype = data[0]['thrusters'][0]['type'];
      devpartener = data[0]['heat_shield']['dev_partner'];
      img = data[0]['flickr_images'][0];
      description = data[0]['description'];
    } catch (e) {
      name = "No Internet";
      type = "No Internet";
      active = "No Internet";
      drymass = "No Internet";
      description = "No Internet";
      fuel1 = 'No Internet';
      fuel2 = 'No Internet';
      launchpayloadmass = "No Internet";
      devpartener = 'No Internet';
      img = 'No Internet';
      thrustertype = 'No internet';
      print('the error is $e');
    }
  }
}



api instance = api(data2:'hello' ,data1:'please' );
