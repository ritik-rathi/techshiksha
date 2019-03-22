import 'package:flutter/material.dart';

class Titles {
  String title;
  String path;

  Titles({this.path, this.title});
}

final titles = [
  new Titles(title: 'Take\n Attendance', path: '/take'),
  new Titles(title: 'Upload Homework', path: '/upload'),
  new Titles(title: 'Upload Test', path: '/upload'),
  new Titles(title: 'Upload Assignment', path: '/upload'),
  new Titles(title: 'Upload Circular', path: '/upload'),
  new Titles(title: 'Student report', path: '/upload'),
];

class Containers extends StatelessWidget {
  final Titles t;
  Containers({this.t});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, t.path);
      },
      child: Container(
        margin: EdgeInsets.only(right: 20),
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(
                  color: Color(0xFFE20ab4), offset: Offset(3, 3), blurRadius: 1)
            ],
            color: Colors.white,
            border: Border.all(width: 2, color: Color(0xFFE20ab4)),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            t.title,
            style: TextStyle(
                color: Color(0xFFE20ab4),
                fontSize: 20,
                fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class TeacherMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        backgroundColor: Color(0xFFE20ab4),
      ),
      body: ListView(
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
    );
  }
}
