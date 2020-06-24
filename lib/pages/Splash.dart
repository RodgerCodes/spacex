import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}



class _SplashState extends State<Splash> {

Future<Null> _handleRefresh()async{
    return await Future.delayed(Duration(seconds:10),(){
      print('Refreshing');
    });
  }

void fetchdata() async {
    await Future.delayed(Duration(seconds: 3), () => {
      Navigator.pushReplacementNamed(context, '/home')
    });
  }

@override
void initState(){
  super.initState();
  fetchdata();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: RefreshIndicator(
          child: ListView(
            children: <Widget>[
             Container(
                 child:SafeArea(
                   child: Image.asset('assets/logo.jpg',
                   height:230 ,
                   width:90,)
                ) ,
             ),
             Container(
               padding: EdgeInsets.fromLTRB(0, 310, 0, 0),
               child: SpinKitFadingCircle(
                 color: Colors.white,
               ),
             )
            ],
          ), onRefresh: _handleRefresh),
    );
  }
}