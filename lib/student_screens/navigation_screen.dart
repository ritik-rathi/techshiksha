import 'package:flutter/material.dart';
import 'subjects.dart';

class NavigationScreen extends StatelessWidget {
  final Subjects subject;

  NavigationScreen({this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(subject.sub),
      ),
      body: Stack(
        children: <Widget>[
          new Container(
              width: 200.0,
              height: 200.0,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: new LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [subject.color1, subject.color2],
                ),
              ),
              child: new Column(
                children: <Widget>[
                  Icon(
                    Icons.textsms,
                    color: Colors.white12,
                    size: 50.0,
                  ),
                  Text(
                    'NCERT',
                    style: new TextStyle(
                        color: Colors.white12,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
          new Container(
              width: 200.0,
              height: 200.0,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: new LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [subject.color1, subject.color2],
                ),
              ),
              child: Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.textsms,
                      color: Colors.white12,
                      size: 50.0,
                    ),
                    Text(
                      'NCERT',
                      style: new TextStyle(
                          color: Colors.white12,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
