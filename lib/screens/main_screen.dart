import 'package:flutter/material.dart';
import 'attendance.dart';
import 'testscores.dart';

String sub = '';
Color color1, color2;

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
        drawer: new Drawer(
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
                            builder: (BuildContext context) =>
                                new TestScore()));
                  }),
              new ListTile(
                  title: new Text('Attendance'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new Attendance()));
                  })
            ],
          ),
        ),
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
                        onPressed: () {},
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
                Row(children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      margin:
                          EdgeInsets.only(left: 5.0, right: 10.0, top: 20.0),
                      child: DecoratedBox(
                        child: Row(
                          children: <Widget>[
                            new IconButton(
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                iconSize: 50.0,
                                onPressed: () {
                                  color1 = Colors.cyan[200];
                                  color2 = Colors.cyan;
                                  sub = 'SCIENCE';
                                  Navigator.pushNamed(context, '/science');
                                },
                                icon: Image.asset('assets/sci_icon.png')),
                            Text('SCIENCE',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                                const Radius.circular(10.0)),
                            shape: BoxShape.rectangle,
                            gradient: LinearGradient(
                                begin: FractionalOffset.centerLeft,
                                end: FractionalOffset.centerRight,
                                colors: [Colors.cyan[200], Colors.cyan])),
                      ),
                      /*child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/science.png'),
                 ),*/
                    ),
                  ),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      margin:
                          EdgeInsets.only(right: 5.0, left: 10.0, top: 20.0),
                      child: DecoratedBox(
                        child: Row(
                          children: <Widget>[
                            new IconButton(
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                iconSize: 50.0,
                                onPressed: () {
                                  color1 = Colors.yellow[300];
                                  color2 = Colors.orange[300];
                                  sub = 'MATHS';
                                  Navigator.pushNamed(context, '/science');
                                },
                                icon: Image.asset('assets/math_icon.png')),
                            Text('MATHS',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                                const Radius.circular(10.0)),
                            gradient: LinearGradient(
                                begin: FractionalOffset.centerLeft,
                                end: FractionalOffset.centerRight,
                                colors: [
                                  Colors.yellow[300],
                                  Colors.orange[300]
                                ])),
                      ),
                      /*child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/maths.jpg'),
                  ),*/
                    ),
                  )
                ]),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                ),
                Row(children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      margin:
                          EdgeInsets.only(left: 5.0, right: 10.0, top: 20.0),
                      child: DecoratedBox(
                        child: Row(
                          children: <Widget>[
                            new IconButton(
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                iconSize: 50.0,
                                onPressed: () {
                                  sub = 'HISTORY';
                                  color1 = Colors.brown[100];
                                  color2 = Colors.brown[200];
                                  Navigator.pushNamed(context, '/science');
                                },
                                icon: Image.asset('assets/his_icon.png')),
                            Text('HISTORY',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                                const Radius.circular(10.0)),
                            gradient: LinearGradient(
                                begin: FractionalOffset.centerLeft,
                                end: FractionalOffset.centerRight,
                                colors: [
                                  Colors.brown[100],
                                  Colors.brown[200]
                                ])),
                      ),

                      /*child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/history.jpg'),
                 ),*/
                    ),
                  ),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      margin:
                          EdgeInsets.only(right: 5.0, left: 10.0, top: 20.0),
                      child: DecoratedBox(
                        child: Row(
                          children: <Widget>[
                            new IconButton(
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                iconSize: 50.0,
                                onPressed: () {
                                  color1 = Colors.green[200];
                                  color2 = Colors.green[300];
                                  sub = 'CIVICS';
                                  Navigator.pushNamed(context, '/science');
                                },
                                icon: Image.asset('assets/civ_icon.jpg')),
                            Text('CIVICS',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                                const Radius.circular(10.0)),
                            gradient: LinearGradient(
                                begin: FractionalOffset.centerLeft,
                                end: FractionalOffset.centerRight,
                                colors: [
                                  Colors.green[200],
                                  Colors.green[300]
                                ])),
                      ),
                      /*child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/civics.jpg'),
                 ),*/
                    ),
                  )
                ]),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                ),
                Row(children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      margin:
                          EdgeInsets.only(left: 5.0, right: 10.0, top: 20.0),
                      child: DecoratedBox(
                        child: Row(
                          children: <Widget>[
                            new IconButton(
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                iconSize: 50.0,
                                onPressed: () {
                                  color1 = Colors.blue[100];
                                  color2= Colors.blue[300];
                                  sub = 'GEOGRAPHY';
                                  Navigator.pushNamed(context, '/science');
                                },
                                icon: Image.asset('assets/geo_icon.png')),
                            Text('GEO',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                                const Radius.circular(10.0)),
                            gradient: LinearGradient(
                                begin: FractionalOffset.centerLeft,
                                end: FractionalOffset.centerRight,
                                colors: [Colors.blue[100], Colors.blue[300]])),
                      ),
                      /*child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/geo.jpg'),
                 ),*/
                    ),
                  ),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      margin:
                          EdgeInsets.only(right: 5.0, left: 10.0, top: 20.0),
                      child: DecoratedBox(
                        child: Row(
                          children: <Widget>[
                            new IconButton(
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                iconSize: 50.0,
                                onPressed: () {
                                  color1 = Colors.red[100];
                                  color2 = Colors.red[400];
                                  sub = 'HINDI';
                                  Navigator.pushNamed(context, '/science');
                                },
                                icon: Image.asset('assets/hin_icon.png')),
                            Text('HINDI',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                                const Radius.circular(10.0)),
                            gradient: LinearGradient(
                                begin: FractionalOffset.centerLeft,
                                end: FractionalOffset.centerRight,
                                colors: [Colors.red[100], Colors.red[400]])),
                      ),
                      /*child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/hindi.jpg'),
                 ),*/
                    ),
                  )
                ]),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                ),
                Row(children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: EdgeInsets.only(
                          left: 5.0, right: 10.0, top: 20.0, bottom: 20.0),
                      child: DecoratedBox(
                        child: Row(
                          children: <Widget>[
                            new IconButton(
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                iconSize: 50.0,
                                onPressed: () {
                                  color1 = Colors.grey[350];
                                  color2 = Colors.black;
                                  sub = 'ENGLISH';
                                  Navigator.pushNamed(context, '/science');
                                },
                                icon: Image.asset('assets/eng_icon.png')),
                            Text('ENGLISH',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                                const Radius.circular(10.0)),
                            gradient: LinearGradient(
                                begin: FractionalOffset.centerLeft,
                                end: FractionalOffset.centerRight,
                                colors: [Colors.grey[350], Colors.black])),
                      ),
                      // child: new IconButton(
                      //   alignment: Alignment.centerLeft,
                      //   iconSize: 100.0,
                      //   onPressed: (){},
                      //   icon: Image.asset('assets/english.jpg')
                      // )
                      /*child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/english.jpg'),
                 ),*/
                    ),
                  ),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      margin: EdgeInsets.only(
                          right: 5.0, left: 10.0, top: 20.0, bottom: 20.0),
                      child: DecoratedBox(
                        child: Row(
                          children: <Widget>[
                            new IconButton(
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                iconSize: 50.0,
                                onPressed: () {
                                  color1 = Colors.pink[100];
                                  color2 = Colors.pink;
                                  sub = 'FRENCH';
                                  Navigator.pushNamed(context, '/science');
                                },
                                icon: Image.asset('assets/fre_icon.jpg')),
                            Text('FRENCH',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                                const Radius.circular(10.0)),
                            gradient: LinearGradient(
                                begin: FractionalOffset.centerLeft,
                                end: FractionalOffset.centerRight,
                                colors: [Colors.pink[100], Colors.pink])),
                      ),
                      /*child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/french.jpg'),
                 ),*/
                    ),
                  )
                ])
              ],
            )));
  }
}
