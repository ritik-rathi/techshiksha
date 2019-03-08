import 'package:flutter/material.dart';
import 'subjects.dart';

class SubDetail {
  String title;
  String img;
  String path;

  SubDetail({this.img, this.title, this.path});
}

final titles = [
  new SubDetail(title: 'NCERT', img: 'assets/book_col.png', path: '/ncert'),
  new SubDetail(title: 'NOTES', img: 'assets/notes_col.png', path: '/ncert'),
  new SubDetail(title: 'TESTS', img: 'assets/test_col.png', path: '/ncert'),
  new SubDetail(title: 'HW', img: 'assets/hw_col.png', path: '/hw'),
  new SubDetail(title: 'REF.', img: 'assets/book_col.png', path: '/ncert')
];

class Cards extends StatelessWidget {
  final SubDetail subs;

  Cards({this.subs});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 151,
      width: 100,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          IconButton(
            icon: Image.asset(subs.img),
            onPressed: () {
              Navigator.pushNamed(context, subs.path);
            },
            iconSize: 80.0,
          ),
          Text(
            subs.title,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          )
        ],
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
        resizeToAvoidBottomPadding: true,
        body: Container(
          width: MediaQuery.of(context).size.width,
          //height: Size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [color11, color22],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)),
          child:Stack(
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
                top: 150.0,
                right: 10.0,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      color: Colors.white30),
                ),
              ),
              new Positioned(
                bottom: 15.0,
                left: 2.0,
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
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                top: 50.0,
                left: 80.0,
                right: 80,
              ),
              Positioned(
                top: 140,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
              ),
              Positioned(
                child: Cards(
                  subs: titles[2],
                ),
                top: 300,
                left: 100,
                right: 100,
              ),
              Positioned(
                top: 460,
                //bottom: 100,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
              )
            ],
          ),
        ));
  }
}
