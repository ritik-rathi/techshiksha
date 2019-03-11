import 'package:flutter/material.dart';
import 'subjects.dart';
import 'package:techshiksha_student/bottom_navbar2.dart';
import 'package:firebase_auth/firebase_auth.dart';

String sub = '';
Color color1, color2;

// class Drawer1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: <Widget>[
//           new UserAccountsDrawerHeader(
//             accountName: new Text('Ritik Rathi'),
//             accountEmail: new Text('testemail@test.com'),
//             currentAccountPicture: new CircleAvatar(
//               backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
//             ),
//           ),
//           new ListTile(
//               title: new Text('Test Scores'),
//               onTap: () {
//                 Navigator.of(context).pop();
//                 Navigator.push(
//                     context,
//                     new MaterialPageRoute(
//                         builder: (BuildContext context) => new TestScore()));
//               }),
//           new ListTile(
//               title: new Text('Attendance'),
//               onTap: () {
//                 Navigator.of(context).pop();
//                 Navigator.push(
//                     context,
//                     new MaterialPageRoute(
//                         builder: (BuildContext context) => new Attendance()));
//               })
//         ],
//       ),
//     );
//   }
// }

class MainScreen extends StatefulWidget {
  const MainScreen({Key key, this.user}) : super(key: key);
  // final FirebaseUser user;
  final String user;
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // var em = '${'name'}';
    var em = "${widget.user}";
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 150),
        child: new Container(
          height: 150.0,
          width: double.infinity,
          decoration: new BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.teal, Colors.teal[50]])),
          child: Stack(
            children: <Widget>[
              new Positioned(
                top: 20.0,
                left: 20.0,
                child: new Text('Hello!',
                    style: new TextStyle(
                        fontSize: 24.0, fontWeight: FontWeight.bold)),
              ),
              new Positioned(
                top: 60.0,
                left: 20.0,
                child: new Text(
                    //TODO: Implement username after backend
                    em,
                    style: new TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold)),
              ),

              //circle

              new Positioned(
                top: 0.0,
                left: 10.0,
                child: Container(
                  height: 300.0,
                  width: 300.0,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      color: Colors.white12),
                ),
              ),
              new Positioned(
                bottom: 20.0,
                right: 10.0,
                child: Container(
                  height: 300.0,
                  width: 300.0,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      color: Colors.white10),
                ),
              ),
              Positioned(
                  top: 20.0,
                  right: 20.0,
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(150.0),
                          image: DecorationImage(
                              image: AssetImage('assets/ritik.jpeg'),
                              fit: BoxFit.cover))))
            ],
          ),
        ),
      ),
      bottomNavigationBar: FlipBoxBar(
        items: [
          FlipBarItem(
              icon: new Image.asset('assets/profile.png',
                  height: 30.0, width: 30.0),
              text: Text("Profile"),
              frontColor: Colors.teal[100],
              backColor: Colors.teal[300]),
          FlipBarItem(
              icon: new Image.asset('assets/attendance.png',
                  height: 30.0, width: 30.0),
              text: Text("Attendance"),
              frontColor: Colors.teal[100],
              backColor: Colors.teal[300]),
          FlipBarItem(
              icon: new Image.asset('assets/testscore.png',
                  height: 30.0, width: 30.0),
              text: Text("Scores"),
              frontColor: Colors.teal[100],
              backColor: Colors.teal[300]),
          //FlipBarItem(icon: Icon(Icons.print), text: Text("Print"), frontColor: Colors.teal[100], backColor: Colors.teal[300]),
          //FlipBarItem(icon: Icon(Icons.print), text: Text("Print"), frontColor: Colors.teal[100], backColor: Colors.teal[300]),
        ],
        onIndexChanged: (newIndex) {
          print(newIndex);
        },
      ),
      // appBar: new AppBar(
      //   title: Text('SUBJECTS'),
      // ),
      // drawer: Drawer1(),
      body: new ListView(children: <Widget>[
        // new Container(
        //   decoration: new BoxDecoration(
        //       image: new DecorationImage(
        //           image: new AssetImage('assets/bck1.jpg'), fit: BoxFit.cover)),
        // ),
        // Container(
        // //     child: Container(
        // //       margin: EdgeInsets.only(top: 20.0, left: 10.0),
        // //       child: IconButton(
        // //         icon: Image.asset('assets/drawer.png'),
        // //         onPressed: () {
        // //           Navigator.pushNamed(context, '/drawer');
        // //         },
        // //         iconSize: 40.0,
        // //         alignment: Alignment.centerLeft,
        // //         padding: EdgeInsets.only(left: 0.1),
        // //       ),
        // //       /*Image(
        // //   image: new AssetImage('assets/drawer.png'),
        // //   height: 50.0,
        // //   width: 50.0,
        // //   alignment: Alignment.centerLeft,
        // // ),*/
        // //     ),
        // // margin: EdgeInsets.only(bottom: 20.0)
        // ),
        // Container(
        //   child: Text('Hello',
        //       style:
        //           TextStyle(fontSize: 30.0, color: Colors.blueAccent)),
        //   margin: EdgeInsets.only(left: 10.0),
        // ),
        // Container(
        //   child: Text('Ritik',
        //       style: TextStyle(
        //           fontSize: 50.0,
        //           fontWeight: FontWeight.bold,
        //           color: Colors.blueAccent)),
        //   margin: EdgeInsets.only(left: 10.0),
        // ),

        // iconbuttons for various subjects

        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SubjectViewModel(
              subject: subjects[0],
            )
          ],
        ),

        new SizedBox(
          height: 10.0,
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SubjectViewModel(
              subject: subjects[1],
            )
          ],
        ),

        new SizedBox(
          height: 10.0,
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SubjectViewModel(
              subject: subjects[2],
            )
          ],
        ),

        new SizedBox(
          height: 10.0,
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SubjectViewModel(
              subject: subjects[3],
            )
          ],
        ),

        new SizedBox(
          height: 10.0,
        ),

        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SubjectViewModel(
              subject: subjects[4],
            )
          ],
        ),

        new SizedBox(
          height: 10.0,
        ),

        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SubjectViewModel(
              subject: subjects[5],
            )
          ],
        ),

        new SizedBox(
          height: 10.0,
        ),

        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SubjectViewModel(
              subject: subjects[6],
            )
          ],
        ),

        new SizedBox(
          height: 10.0,
        ),

        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SubjectViewModel(
              subject: subjects[7],
            )
          ],
        ),

        new SizedBox(
          height: 10.0,
        ),
      ]),
      // bottomNavigationBar: FlipBoxBar(
      //     items: [
      //       FlipBarItem(icon: Icon(Icons.map), text: Text("Map"), frontColor: Colors.blue, backColor: Colors.blueAccent),
      //       FlipBarItem(icon: Icon(Icons.add), text: Text("Add"), frontColor: Colors.cyan, backColor: Colors.cyanAccent),
      //       FlipBarItem(icon: Icon(Icons.chrome_reader_mode), text: Text("Read"), frontColor: Colors.orange, backColor: Colors.orangeAccent),
      //       FlipBarItem(icon: Icon(Icons.print), text: Text("Print"), frontColor: Colors.purple, backColor: Colors.purpleAccent),
      //       FlipBarItem(icon: Icon(Icons.print), text: Text("Print"), frontColor: Colors.pink, backColor: Colors.pinkAccent),
      //     ],
      //     onIndexChanged: (newIndex) {
      //       print(newIndex);
      //     },
      //   ),
    );
  }
}
