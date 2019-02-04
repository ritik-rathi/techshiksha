import 'package:flutter/material.dart';

class Civics extends StatefulWidget{
  CivicsState createState() => CivicsState();
}

class CivicsState extends State<Civics>{
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
                      'CIVICS',
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
                      Colors.green[200],
                      Colors.green[300]
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
                        Colors.green[200],
                        Colors.green[300]
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
                        Colors.green[200],
                        Colors.green[200]
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
                        Colors.green[200],
                        Colors.green[200]
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
                        Colors.green[200],
                        Colors.green[300]
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