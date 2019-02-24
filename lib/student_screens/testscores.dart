import 'package:flutter/material.dart';
import 'subjects.dart';

class Tests extends StatelessWidget{
  final Subjects subj;
  Tests({this.subj});
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
     // margin: EdgeInsets.only(left: 5.0, right: 10.0, top: 20.0),
      height: 150,
      width: 50,
      decoration: BoxDecoration(
        color: subj.color2
      ),
      child: Center(
        child: Text(
        subj.sub,
        style: TextStyle(fontSize: 30),
      ),
      )
    );
  }
}

//TODO: write the logic
class TestScore extends StatelessWidget{

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: new AppBar(
        title: Text('Test Scores'),
        backgroundColor: Colors.teal[300],
      ),

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