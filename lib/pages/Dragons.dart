import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dragon extends StatefulWidget {
  @override
  _DragonState createState() => _DragonState();
}

class _DragonState extends State<Dragon> {
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
      appBar:AppBar(
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
        backgroundColor: Colors.grey[800],
        onRefresh: _handleRefresh,
        child: ListView(
          children: <Widget>[
             Padding(
               padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
               child: Text(dataset['name'],
               style: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 30
               ),),
             ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image.network(dataset['img'],
              height: 250,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 15, 0, 10),
              child: Text('Description',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            Padding(
              padding:EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Text(dataset['description'],
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 15
               ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 15, 0, 10),
              child: Text('Properties',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Card(
                    color: Colors.grey[900],
                    child: Container(
                      height: 80,
                      width: 150,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                             Padding(
                               padding: EdgeInsets.fromLTRB(45, 10, 20, 10),
                               child: Text('Active',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                               ),
                             )
                            ],
                          ),
                            Text(dataset['active'],
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                            ),
                            )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey[900],
                    child: Container(
                      height: 80,
                      width: 150,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(45, 10, 20, 10),
                                child: Text('Type',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(dataset['type'],
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Row(
                children: <Widget>[
                  Card(
                    color: Colors.grey[900],
                    child: Container(
                      height: 80,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(50, 10, 65, 10),
                                child: Text('Launch Payload Mass',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(dataset['launch'],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Row(
                children: <Widget>[
                  Card(
                    color: Colors.grey[900],
                    child: Container(
                      height: 80,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(120, 10, 135, 10),
                                child: Text('Fuel 1',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(dataset['fuel1'],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Row(
                children: <Widget>[
                  Card(
                    color: Colors.grey[900],
                    child: Container(
                      height: 80,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(120, 10, 135, 10),
                                child: Text('Fuel 2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(dataset['fuel2'],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Card(
                  color: Colors.grey[900],
                  child: Container(
                    height: 80,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 13, 10),
                              child: Text('Thruster'
                                  'Type',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(dataset['thruster'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey[900],
                  child: Container(
                    height: 80,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child:Text('Partener',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Image.asset('assets/nasa.jpg',
                            height: 20,),
                            Text(dataset['partener'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
