import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';

class info {
  String data1;
  String data2;
  String founder;
  int year;
  int employees;
  String ceo;
  String coo;
  int launchsite;
  String summary;
  Map head;



  info({this.data1, this.data2});

  Future<void> getdata() async{


    try {

      Response response = await get('https://api.spacexdata.com/v3/info');
      Map data = jsonDecode(response.body);
      founder = data['founder'];
      year =data['founded'] ;
      employees = data['employees'];
      launchsite = data['launch_sites'];
      ceo = data['ceo'];
      coo = data['coo'];
      head = data['headquarters'];
      summary = data['summary'];
//      print(data);
//      print(summary);
    } catch (e) {
      founder = 'No Internet';
      ceo = 'No Internet';
      coo = 'No Internet';
      summary = 'No Internet';
      print('the error is $e');
    }
  }
}



info instance = info(data2:'hello' ,data1:'please' );
