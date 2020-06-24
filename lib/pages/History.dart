import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  Future<Null> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 3), (){

    });
  }
  Map dataset;

  @override
  Widget build(BuildContext context) {
    dataset = ModalRoute.of(context).settings.arguments;
    print(dataset);
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
              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Text('Founder',
              style:TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ) ,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Image.asset('assets/elon.jpg',
               height: 120,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Text(dataset['founder'],
              style:TextStyle(
                color: Colors.white,
                fontSize: 20
              ) ,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Text('CEO',
                style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ) ,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(dataset['ceo'],
                style:TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ) ,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text('COO',
                style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ) ,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Text(dataset['coo'],
                style:TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ) ,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text('About',
                style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ) ,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Text(dataset['summary'],
                style:TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
