import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';

class miss {
  String data1;
  String data2;
  String miss1name;
  String miss1des;
  String miss1man;
  String miss2name;
  String miss2des;
  String miss2man;
  String miss3name;
  String miss3des;
  String miss3man;
  String miss4name;
  String miss4des;
  String miss4man;
  String miss5name;
  String miss5des;
  String miss5man1;
  String miss5man2;
  String miss5man3;
  miss({this.data1, this.data2});

  Future<void> getMiss() async{


    try {

      Response response = await get('https://api.spacexdata.com/v3/missions');
      List data = jsonDecode(response.body);
//      mission 1 data
      miss1name = data[0]['mission_name'];
      miss1man = data[0]['manufacturers'][0];
      miss1des = data[0]['description'];

//      mission 2 data
      miss2name = data[1]['mission_name'];
      miss2man = data[1]['manufacturers'][0];
      miss2des = data[1]['description'];

//      mission 3
      miss3name = data[2]['mission_name'];
      miss3man = data[2]['manufacturers'][0];
      miss3des = data[2]['description'];

//      mission 4
      miss4name = data[3]['mission_name'];
      miss4man = data[3]['manufacturers'][0];
      miss4des = data[3]['description'];
//      mission5
      miss5name = data[4]['mission_name'];
     miss5des = data[4]['description'];
     miss5man1 = data[4]['manufacturers'][0];
     miss5man2 = data[4]['manufacturers'][1];
     miss5man3 =data[4]['manufacturers'][2];
    } catch (e) {
       miss1name  = 'No internet';
       miss1des = 'No internet';
       miss1man = 'No internet';
       miss2name = 'No internet';
       miss2des = 'No internet';
       miss2man = 'No internet';
       miss3name = 'No internet';
       miss3des = 'No internet';
       miss3man = 'No internet';
      miss4name = 'No internet';
       miss4des = 'No internet';
       miss4man = 'No internet';
       miss5name = 'No internet';
       miss5des = 'No internet';
       miss5man1 = 'No internet';
      miss5man2 = 'No internet';
      miss5man3 = 'No Internet';
      print('the error is $e');
    }
  }
}



miss instance = miss(data2:'duh' ,data1:'hello' );