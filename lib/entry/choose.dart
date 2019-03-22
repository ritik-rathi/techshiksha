import 'package:flutter/material.dart';

class Choose extends StatefulWidget {
  @override
  _ChooseState createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFE1306C), Color(0xFF833ab4)])),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 250,
            ),
            Text(
              'Choose one',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 30),
            RaisedButton(
              elevation: 10,
              textColor: Color(0xFFE1306C),
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.pushNamed(context, '/student');
              },
              child: Text(
                'STUDENT',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            RaisedButton(
              elevation: 10,
              textColor: Color(0xFFE20ab4),
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.pushNamed(context, '/teacher');
              },
              child: Text(
                'TEACHER',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            RaisedButton(
              elevation: 10,
              padding: EdgeInsets.all(20),
              textColor: Color(0xFF833ab4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.pushNamed(context, '/teacher');
              },
              child: Text(
                'PARENT',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
