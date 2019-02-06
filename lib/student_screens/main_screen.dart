import 'package:flutter/material.dart';
import 'attendance.dart';
import 'testscores.dart';
import 'subjects.dart';

String sub = '';
Color color1, color2;

class Drawer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text('Ritik Rathi'),
            accountEmail: new Text('testemail@test.com'),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
            ),
          ),
          new ListTile(
              title: new Text('Test Scores'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new TestScore()));
              }),
          new ListTile(
              title: new Text('Attendance'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new Attendance()));
              })
        ],
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // appBar: new AppBar(
        //   title: Text('SUBJECTS'),
        // ),
        drawer: Drawer1(),
        body: new Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage('assets/bck1.jpg'),
                    fit: BoxFit.cover)),
            child: ListView(
              children: <Widget>[
                Container(
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0, left: 10.0),
                      child: IconButton(
                        icon: Image.asset('assets/drawer.png'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/drawer');
                        },
                        iconSize: 40.0,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 0.1),
                      ),
                      /*Image(
                  image: new AssetImage('assets/drawer.png'),
                  height: 50.0,
                  width: 50.0,
                  alignment: Alignment.centerLeft,
                ),*/
                    ),
                    margin: EdgeInsets.only(bottom: 20.0)),
                Container(
                  child: Text('Hello',
                      style:
                          TextStyle(fontSize: 30.0, color: Colors.blueAccent)),
                  margin: EdgeInsets.only(left: 10.0),
                ),
                Container(
                  child: Text('Ritik',
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent)),
                  margin: EdgeInsets.only(left: 10.0),
                ),

                // iconbuttons for various subjects

                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: SubjectViewModel(
                        subject: subjects[0],
                      )),
                      Expanded(
                        child: SubjectViewModel(
                          subject: subjects[1],
                        ),
                      )
                    ],
                  ),
                ),
                new SizedBox(
                  height: 20.0,
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: SubjectViewModel(
                      subject: subjects[2],
                    )),
                    Expanded(
                      child: SubjectViewModel(
                        subject: subjects[3],
                      ),
                    )
                  ],
                ),
                new SizedBox(
                  height: 20.0,
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: SubjectViewModel(
                      subject: subjects[4],
                    )),
                    Expanded(
                      child: SubjectViewModel(
                        subject: subjects[5],
                      ),
                    )
                  ],
                ),
                new SizedBox(
                  height: 20.0,
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: SubjectViewModel(
                      subject: subjects[6],
                    )),
                    Expanded(
                      child: SubjectViewModel(
                        subject: subjects[7],
                      ),
                    )
                  ],
                ),
              ],
            )));
  }
}
