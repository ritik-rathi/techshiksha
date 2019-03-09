import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: new AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 50.0),
          CircleAvatar(
            backgroundImage:AssetImage('assets/ritik.jpeg'),
            radius: 100.0,
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 30,
                child: Center(
                  child: Text('Name: ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                height: 30,
                child: Center(
                  child: Text('Ritik Rathi',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 30,
                child: Center(
                  child: Text('Admn No.: ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                height: 30,
                child: Center(
                  child: Text('5313',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 30,
                child: Center(
                  child: Text('Class: ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                height: 30,
                child: Center(
                  child: Text('6-C',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 30,
                child: Center(
                  child: Text('Blood Group: ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                height: 30,
                child: Center(
                  child: Text('B+',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
              )
            ],
          )
        ],
      ),
    );

  }
}