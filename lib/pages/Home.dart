import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';
import 'package:spacex/HomeComp/Body.dart';
import 'package:spacex/services/Constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  createAlertDialog(BuildContext context){
   return showDialog(context: context,builder: (context){
     return AlertDialog(
      title: Row(
        children: <Widget>[
          Image.asset('assets/logo1.png',
          height: 60,
          width: 40,),
          Text('ABOUT')
        ],
      ),
      content: Text('The SpaceX Product was Developed By Rodger Kumwanje',
      style: TextStyle(
        fontSize: 19
      ),),
      actions: <Widget>[
        MaterialButton(
          child: Text('Ok',
          style: TextStyle(
            fontSize: 15,
            color: Colors.cyan
          ),),
          onPressed: (){
            Navigator.pop(context);
          },
        )
      ],
     );
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
         mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo1.png'
            ,height: 200,
            width: 90,
            ),
            Text('SpaceX',
            style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize:27
            ),)
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context){
              return Constants.Choices.map((String choice){
                return PopupMenuItem(
                  value: choice,
                  child: Text(choice,
                  style: TextStyle(
                    fontSize: 20
                  ),)
              );
              }).toList();
            },
            onSelected: ChoiceAction,
        )
        ],
      ),
     body: Body(),
      
    );
    
  }
  void ChoiceAction(String choice){
     if(choice == Constants.About){
       createAlertDialog(context);
     }
     if(choice == Constants.Share){
       Share.share('Check out my Website https://rodgercodes@gmail.com');
     }
     if(choice == Constants.Exit){
       SystemNavigator.pop();
     }
    }
}