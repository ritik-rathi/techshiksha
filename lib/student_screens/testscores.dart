import 'package:flutter/material.dart';
import 'subjects.dart';

String subject = '';
Color testColor;

class Tests extends StatelessWidget {
  final Subjects subj;
  Tests({this.subj});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
        onTap: () {
          subject = subj.sub;
          testColor = subj.color2;
          Navigator.pushNamed(context, '/SubScore');
        },
        child: Container(
            //padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            margin: EdgeInsets.only(left: 5.0, right: 10.0, top: 20.0),
            height: 150,
            width: 50,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [subj.color1, subj.color2],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight)),
            child: Center(
              child: Text(subj.sub, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            )));
  }
}

//TODO: write the logic
class TestScore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      // appBar: new AppBar(
      //   title: Text('Test Scores'),
      //   backgroundColor: Colors.teal[300],
      // ),
      body: ListView(
        children: <Widget>[
          //SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Tests(
                  subj: subjects[0],
                ),
              ),
              Expanded(
                child: Tests(
                  subj: subjects[1],
                ),
              ),
            ],
          ),
          //SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Tests(
                  subj: subjects[2],
                ),
              ),
              Expanded(
                child: Tests(
                  subj: subjects[3],
                ),
              ),
            ],
          ),
          //SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Tests(
                  subj: subjects[4],
                ),
              ),
              Expanded(
                child: Tests(
                  subj: subjects[5],
                ),
              ),
            ],
          ),
          //SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Tests(
                  subj: subjects[6],
                ),
              ),
              Expanded(
                child: Tests(
                  subj: subjects[7],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Scores extends StatefulWidget {
  @override
  _ScoresState createState() => _ScoresState();
}

class _ScoresState extends State<Scores> {
  //_ScoresState({this.subj});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subject),
        backgroundColor: testColor,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16, right: 100, left: 100),
        child: ListView.builder(
        itemBuilder: (BuildContext context, index) {
          return Column(
            children: <Widget>[
              
              GestureDetector(
              onTap: () {},
              child: Container(
                child: Text('Test number ${index + 1}', textAlign: TextAlign.center,style: TextStyle(color: Colors.grey ,fontSize: 20.0), ),
                height: 30.0,
              )),
              Divider(
                height: 20,
                color: testColor,
              ),
            ],
          );
        },
      )),
    );
  }
}
