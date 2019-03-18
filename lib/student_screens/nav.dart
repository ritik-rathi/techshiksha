import 'package:flutter/material.dart';
import 'subjects.dart';

class SubDetail {
  String title;
  String img;
  String path;

  SubDetail({this.img, this.title, this.path});
}

final titles = [
  new SubDetail(title: 'NCERT', img: 'assets/book.png', path: '/ncert'),
  new SubDetail(title: 'NOTES', img: 'assets/notes.png', path: '/ncert'),
  new SubDetail(title: 'TESTS', img: 'assets/test.png', path: '/ncert'),
  new SubDetail(title: 'Home\n Work', img: 'assets/hw1.png', path: '/hw'),
  new SubDetail(
      title: 'Ref.\nBook', img: 'assets/book.png', path: '/ncert')
];

class Cards extends StatelessWidget {
  final SubDetail subs;

  Cards({this.subs});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: GestureDetector(
          child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                        //color: Colors.grey,
                        offset: Offset(5, 5),
                        blurRadius: 5)
                  ],
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  subs.title,
                  style: TextStyle(
                    color: color11,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: color22, offset: Offset(-1.0, 2.0)),
                      Shadow(color: color22, offset: Offset(-2.0, -2.0)),
                      Shadow(color: color22, offset: Offset(1.0, -2.0))
                    ],
                  ),
                ),
              ))),
      onTap: () {
        Navigator.pushNamed(context, subs.path);
      },
    );
  }
}

class NavigationScreen extends StatelessWidget {
  final Subjects subject;

  NavigationScreen({this.subject});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: Container(
          width: MediaQuery.of(context).size.width,
          //height: Size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [color11, color22],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)),
          child: Stack(
            children: <Widget>[
              new Positioned(
                top: 0.0,
                left: 10.0,
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      color: Colors.white30),
                ),
              ),
              new Positioned(
                top: 300,
                right: -100.0,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      color: Colors.white30),
                ),
              ),
              new Positioned(
                bottom: -125.0,
                left: -125.0,
                child: Container(
                  height: 250.0,
                  width: 250.0,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      color: Colors.white30),
                ),
              ),
              Positioned(
                child: Text(
                  sub_final,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.black, offset: Offset(-1.0, 2.0)),
                      Shadow(color: Colors.black, offset: Offset(-2.0, -2.0)),
                      Shadow(color: Colors.black, offset: Offset(1.0, -2.0))
                    ],
                  ),
                ),
                top: 50.0,
                left: 30.0,
                right: 30,
              ),
              Positioned(
                top: 140,
                left: 10,
                //right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20.0, right: 15),
                      child: Cards(
                        subs: titles[0],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0, left: 15),
                      child: Cards(
                        subs: titles[1],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Cards(
                      subs: titles[2],
                    ),
                  ],
                ),
                top: 330,
                left: 120,
                right: 120,
              ),
              Positioned(
                top: 520,
                //bottom: 100,
                left: 10,
                //right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20.0, right: 15),
                      child: Cards(
                        subs: titles[3],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0, left: 15),
                      child: Cards(
                        subs: titles[4],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
