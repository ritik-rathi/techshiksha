import 'dart:ui';

import 'package:flutter/material.dart';

class Titles {
  String title;
  String path;
  Color color;
  String imgPath;

  Titles({this.path, this.title, this.color, this.imgPath});
}

final titles = [
  new Titles(
      title: 'Take\n Attendance',
      path: '/take',
      color: Colors.red,
      imgPath: 'assets/TakeAttendance.png'),
  new Titles(
      title: 'Upload Homework',
      path: '/upload',
      color: Colors.blue,
      imgPath: 'assets/HomeWork.jpg'),
  new Titles(
      title: 'Upload Test',
      path: '/upload',
      color: Colors.green,
      imgPath: 'assets/test_col.png'),
  new Titles(
      title: 'Upload Assignment',
      path: '/upload',
      color: Colors.brown,
      imgPath: 'assets/Assignment.jpg'),
  new Titles(
      title: 'Upload Circular',
      path: '/upload',
      color: Colors.pinkAccent,
      imgPath: 'assets/book_col.png'),
  new Titles(
      title: 'Student report',
      path: '/upload',
      color: Colors.lime,
      imgPath: 'assets/StudentReport.jpg'),
];

class Containers extends StatelessWidget {
  final Titles t;
  Containers({this.t});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, t.path);
      },
          child: Stack(children: <Widget>[
        Container(
            margin: EdgeInsets.only(right: 20),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                      color: t.color, offset: Offset(3, 3), blurRadius: 1)
                ],
                color: Colors.white,
                border: Border.all(width: 2, color: Color(0xFFE20ab4)),
                borderRadius: BorderRadius.circular(5),
                image: new DecorationImage(
                    image: AssetImage(t.imgPath), fit: BoxFit.cover))),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: Container(
            child: Center(
              child: Text(
                t.title,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(shadows: [
                  Shadow(offset: Offset(0.0, 0.0), color: Colors.black),
                  Shadow(offset: Offset(-1.0, 0.0), color: Colors.black),
                  Shadow(offset: Offset(1.0, 0.0) , color: Colors.black)
                ], color: t.color, fontSize: 27, fontWeight: FontWeight.w800),
              ),
            ),
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
            ),
          ),
        ),
      ]),
    );
  }
}

class TeacherMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HOME'),
      //   backgroundColor: Color(0xFFE20ab4),
      // ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
                colors: [Color(0xFFE1306C), Color(0xFF833ab4)])),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Containers(t: titles[0]),
                Containers(t: titles[1]),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Containers(t: titles[2]),
                Containers(t: titles[3]),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Containers(t: titles[4]),
                Containers(t: titles[5]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
