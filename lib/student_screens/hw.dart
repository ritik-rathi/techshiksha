import 'package:flutter/material.dart';
import 'subjects.dart';

class Hw extends StatefulWidget {
  @override
  _HwState createState() => _HwState();
}

class _HwState extends State<Hw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeWork'),
        backgroundColor: color22,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, index){
          return Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [color11, color22])),
              height: 150.0,
              width: double.infinity,
              //color: Colors.yellow[200],
              margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 10.0, top: 10.0),
              child: Row(
                children: <Widget>[
                  Container(margin: EdgeInsets.only(bottom: 4.0)),
                  Image.network(
                    '',
                    width: 150.0,
                    height: 150.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Column(children: <Widget>[
                    Text(
                      '',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 90,
                      width: 200,
                      child: Text('',
                          style:
                              new TextStyle(color: Colors.black, fontSize: 13)),
                    ),
                    
                  ]),
                ],
              ),
            );
        },
      )
    );
  }
}