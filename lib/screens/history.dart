import 'package:flutter/material.dart';

class History extends StatefulWidget{
  HistoryState createState() => HistoryState();
}

class HistoryState extends State<History>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 100.0,
              margin: EdgeInsets.only(),
              child: DecoratedBox(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 30.0),
                    ),
                    Text(
                      'HISTORY',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
                    ),
                  ],
                ),
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.brown[100],
                      Colors.brown[200]
                    ]
                  )
                ),
              )
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50.0),
            ),
            Row(
              children: <Widget>[
                Expanded(
                child: Card(
                  margin: EdgeInsets.only(left: 30.0, right: 40.0, top: 20.0),
                  child: DecoratedBox(
                  decoration: new BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.brown[100],
                        Colors.brown[200]
                      ]
                    )
                  ),  
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: new Image.asset('assets/book.png'),
                        onPressed: (){},
                        iconSize: 40.0,
                      ),

                      Text(
                        'NCERT',
                        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                 )
                )),

                Expanded(
                child: Card(
                  margin: EdgeInsets.only(left: 40.0, right: 30.0, top: 20.0),
                  child: DecoratedBox(
                  decoration: new BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.brown[100],
                        Colors.brown[200]
                      ]
                    )
                  ),  
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: new Image.asset('assets/notes.png'),
                        onPressed: (){},
                        iconSize: 40.0,
                      ),

                      Text(
                        'NOTES',
                        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                 )
                ))
              ],
            ),

            Container(margin: EdgeInsets.only(bottom: 50.0),),

            Row(
              children: <Widget>[
                Expanded(
                child: Card(
                  margin: EdgeInsets.only(left: 30.0, right: 40.0, top: 20.0),
                  child: DecoratedBox(
                  decoration: new BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.brown[100],
                        Colors.brown[200]
                      ]
                    )
                  ),  
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: new Image.asset('assets/test.png'),
                        onPressed: (){},
                        iconSize: 40.0,
                      ),

                      Text(
                        'TESTS',
                        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                 )
                )),

                Expanded(
                child: Card(
                  margin: EdgeInsets.only(left: 40.0, right: 30.0, top: 20.0),
                  child: DecoratedBox(
                  decoration: new BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.brown[100],
                        Colors.brown[200]
                      ]
                    )
                  ),  
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: new Image.asset('assets/hw1.png'),
                        onPressed: (){},
                        iconSize: 40.0,
                      ),

                      Text(
                        'HW',
                        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                 )
                ))
              ],
            ),

            Container(margin: EdgeInsets.only(top: 30.0,),)
          ],
        ),
      ),
    );
  }
}