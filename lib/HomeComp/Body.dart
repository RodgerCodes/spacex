import 'package:flutter/material.dart';
import 'package:spacex/apidata/apidragon.dart';
import 'package:spacex/apidata/apiinfo.dart';
import 'package:spacex/apidata/apimissions.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<Null> _handleRefresh()async{
   print('Refreshing');
  }

  void pushdata()async{
  api instance = api(data2: 'hello', data1: 'please');
  await instance.getdata();
  Navigator.pushNamed(context, '/dragon', arguments: {
    'img':instance.img,
    'name':instance.name,
    'type':instance.type,
    'active':instance.active,
    'drymass':instance.drymass,
    'fuel1':instance.fuel1,
    'fuel2':instance.fuel2,
    'launch':instance.launchpayloadmass,
    'thruster':instance.thrustertype,
    'partener':instance.devpartener,
    'description':instance.description
  });
  }

  void pushData2()async{
   miss instance = miss(data2:'duh' ,data1:'hello');
   await instance.getMiss();
   Navigator.pushNamed(context, '/mission', arguments: {
     'miss1name':instance.miss1name,
     'miss1des':instance.miss1des,
     'miss1man':instance.miss1man,
     'miss2name':instance.miss2name,
     'miss2des':instance.miss2des,
     'miss2man':instance.miss2man,
     'miss3name':instance.miss3name,
     'miss3des':instance.miss3des,
     'miss3man':instance.miss3man,
     'miss4name':instance.miss4name,
     'miss4des':instance.miss4des,
     'miss4man':instance.miss4man,
     'miss5name':instance.miss5name,
     'miss5des':instance.miss5des,
     'miss5man1':instance.miss5man1,
     'miss5man2':instance.miss5man2,
     'miss5man3':instance.miss5man3
   });
  }

  void getinfo() async {
    info instance = info(data2:'hello' ,data1:'please');
    await instance.getdata();
    Navigator.pushNamed(context, '/history', arguments: {
      'founder':instance.founder,
      'ceo':instance.ceo,
      'coo':instance.coo,
      'summary':instance.summary,
      'foundedyr':instance.year,
      'employees':instance.employees,
      'head':instance.head
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey[800],
      body:RefreshIndicator(
        onRefresh: _handleRefresh,
        child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color:Color.fromRGBO(0, 0, 0, 0.4),
                          blurRadius: 100,
//                          offset: Offset(0, 10)
                      )
                    ]
                ),
                child: Card(
                  color: Colors.grey[900],
                  child: Container(
                    height: 150,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                          child: Text('Dragons',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: FlatButton(
                              color: Colors.red,
                              onPressed: (){
                                pushdata();
                              },
                              child:Text(
                                'View',
                                style: TextStyle(
                                    color: Colors.white,
                                  fontSize: 20
                                ),
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 180,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color:Color.fromRGBO(0, 0, 0, 0.4),
                          blurRadius: 100,
                          offset: Offset(0, 10)
                      )
                    ]
                ),
                child: Card(
                  color: Colors.grey[900],
                  child: Container(
                    height: 140,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(75, 10, 75, 10),
                          child: Text('Missions',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                          child: FlatButton(
                              color: Colors.red,
                              onPressed: (){
                                pushData2();
                              },
                              child:Text(
                                'View',
                                style: TextStyle(
                                    color: Colors.white,
                                  fontSize: 20
                                ),
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 180,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color:Color.fromRGBO(0, 0, 0, 0.4),
                          blurRadius: 100,
                          offset: Offset(0, 10)
                      )
                    ]
                ),
                child: Card(
                  color: Colors.grey[900],
                  child: Container(
                    height: 140,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(110, 10, 120, 10),
                          child: Text('Info',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                          child: FlatButton(
                              color: Colors.red,
                              onPressed: (){
                                getinfo();
                              },
                              child:Text(
                                'View',
                                style: TextStyle(
                                    color: Colors.white,
                                  fontSize: 20
                                ),
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ],

          )
        ],
        ),
      )
    );
  }
}
