import 'package:flutter/material.dart';

class Mission extends StatefulWidget {
  @override
  _MissionState createState() => _MissionState();
}

class _MissionState extends State<Mission> {
  Future<Null> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 3), (){

    });
  }
  
  Map dataset;
  @override
  Widget build(BuildContext context) {
    dataset = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
          title: Row(
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
          backgroundColor: Colors.grey[900]
      ),
      body: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(6, 10, 0, 0),
              child: Text(dataset['miss1name'],
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 30,
                 fontWeight: FontWeight.bold
               ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/download.png',
                   height: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(dataset['miss1man'],
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 15
                     ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
              child: Text(dataset['miss1des'],
              style: TextStyle(
                color: Colors.white,
                fontSize: 15
              ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
              child: Divider(
                height: 20,
                color: Colors.white,
              ),
            ),

//            mission 2
            Padding(
              padding: EdgeInsets.fromLTRB(6, 10, 0, 0),
              child: Text(dataset['miss2name'],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(dataset['miss2man'],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
              child: Text(dataset['miss2des'],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
              child: Divider(
                height: 20,
                color: Colors.white,
              ),
            ),

//            mission3
            Padding(
              padding: EdgeInsets.fromLTRB(6, 10, 0, 0),
              child: Text(dataset['miss3name'],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/download.png',
                    height: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(dataset['miss3man'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                  )
                ],
              ),
            ),

      Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
        child: Text(dataset['miss3des'],
          style: TextStyle(
              color: Colors.white,
              fontSize: 15
          ),),
      ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
              child: Divider(
                height: 20,
                color: Colors.white,
              ),
            ),

//            mission 4

            Padding(
              padding: EdgeInsets.fromLTRB(6, 10, 0, 0),
              child: Text(dataset['miss4name'],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/logo1.png',
                    height: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(dataset['miss4man'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
              child: Text(dataset['miss4des'],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
              child: Divider(
                height: 20,
                color: Colors.white,
              ),
            ),

//            mission 5
            Padding(
              padding: EdgeInsets.fromLTRB(6, 10, 0, 0),
              child: Text(dataset['miss5name'],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 0,0),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/download.png',
                    height: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(dataset['miss5man1'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/boeing.jpg',
                    height: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(dataset['miss5man2'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/hello.png',
                    height: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(dataset['miss5man3'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
              child: Text(dataset['miss5des'],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),),
            )
        ],
        ),
      ),
    );
  }
}
