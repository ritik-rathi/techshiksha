import 'package:flutter/material.dart';
import 'subjects.dart';

class SubDetail {
  String title;
  String img;

  SubDetail({this.img, this.title});
}

final titles = [
  new SubDetail(title: 'NCERT', img: 'assets/book.png'),
  new SubDetail(title: 'NOTES', img: 'assets/notes.png'),
  new SubDetail(title: 'TESTS', img: 'assets/test.png'),
  new SubDetail(title: 'HW', img: 'assets/hw1.png'),
  new SubDetail(title: 'REF.', img: 'assets/book.png')
];

class Cards extends StatelessWidget {
  final SubDetail subs;

  Cards({this.subs});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: DecoratedBox(
        decoration: new BoxDecoration(
            borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [color11, color22])),
        child: Column(
          children: <Widget>[
            IconButton(
              icon: Image.asset(subs.img),
              onPressed: () {
                Navigator.pushNamed(context, '/ncert');
              },
              iconSize: 50.0,
            ),
            Text(
              subs.title,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class NavigationScreen extends StatelessWidget {
  final Subjects subject;

  NavigationScreen({this.subject});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 100.0,
            child: DecoratedBox(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 30.0),
                  ),
                  Text(
                    sub_final,
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              decoration: new BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [color11, color22])),
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Cards(
                  subs: titles[0],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0, left: 110.0),
                child: Cards(
                  subs: titles[1],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                //margin: EdgeInsets.only(left: 0.0, right: 100.0),
                child: Cards(
                  subs: titles[2],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100.0,
                margin: EdgeInsets.only(left: 20.0),
                child: Cards(
                  subs: titles[3],
                ),
              ),
              Container(
                width: 100.0,
                margin: EdgeInsets.only(right: 20.0, left: 110.0),
                child: Cards(
                  subs: titles[4],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
