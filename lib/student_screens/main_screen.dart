import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:techshiksha_student/student_screens/attendance.dart';
import 'package:techshiksha_student/student_screens/testscores.dart';
import 'subjects.dart';
import 'package:techshiksha_student/bottom_navbar2.dart';
import 'package:firebase_auth/firebase_auth.dart';

String sub = '';
Color color1, color2;

class MainScreen extends StatefulWidget {
  const MainScreen({Key key, this.user}) : super(key: key);
  // final FirebaseUser user;
  final String user;
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
<<<<<<< HEAD
  var name, standard, section, email;
  void getdata(enrollment) {
    var documnet =
        Firestore.instance.collection('/students').document(enrollment);
    documnet.get().then((snp) {
      var data = snp.data;
      name = data['name'];
      standard = data['class'];
      email = data['email'];
      print(standard);
    });
    print("awesome");

  }

  @override
  Widget build(BuildContext context) {
    var em = "${widget.user}";
    getdata(em);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 150),
        child: new Container(
          height: 150.0,
          width: double.infinity,
          decoration: new BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.teal, Colors.white])),
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
                child: new Text(name,
                    style: new TextStyle(
                        fontSize: 40.0, fontWeight: FontWeight.bold)),
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
=======
  @override
  Widget build(BuildContext context) {
    // var em = '${'name'}';
    var em = "${widget.user}";
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Color(
                    0xFFE1306C,
                  ),
                  expandedHeight: 200.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: false,
                      title: Text("Hello\nRitik Rathi!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          )),
                      background: DecoratedBox(
                        decoration: new BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFFE1306C), Color(0xFF833ab4)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                      )),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      indicatorColor: Color(0xFFE1306C),
                      labelColor: Colors.black87,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(
                          icon: Icon(Icons.calendar_today),
                          text: "Attendance",
                        ),
                        Tab(
                          icon: Icon(Icons.lightbulb_outline),
                          text: "Test Score",
                        )
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: ListView(children: <Widget>[
              Stack(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Opacity(
                    opacity: 0.3,
                    child: Container(
                      width: double.infinity,
                      height: 200.0,
                      decoration: BoxDecoration(
                          // color: Colors.white54,
                          image: new DecorationImage(
                              image: AssetImage('assets/science.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned(
                  top: 20.0,
                  bottom: 20,
                  left: 30.0,
                  right: 30,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SubjectViewModel(
                        subject: subjects[0],
                      ),
                    ],
                  ),
                ),
              ]),
              new SizedBox(
                height: 10.0,
              ),
              Stack(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Opacity(
                    opacity: 0.3,
                    child: Container(
                      width: double.infinity,
                      height: 200.0,
                      decoration: BoxDecoration(
                          // color: Colors.white54,
                          image: new DecorationImage(
                              image: AssetImage('assets/maths.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned(
                  top: 20.0,
                  bottom: 20,
                  left: 30.0,
                  right: 30,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SubjectViewModel(
                        subject: subjects[1],
                      ),
                    ],
                  ),
                ),
              ]),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     SubjectViewModel(
              //       subject: subjects[1],
              //     ),
              //   ],
              // ),
              new SizedBox(
                height: 10.0,
              ),
              Stack(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Opacity(
                    opacity: 0.3,
                    child: Container(
                      width: double.infinity,
                      height: 200.0,
                      decoration: BoxDecoration(
                          // color: Colors.white54,
                          image: new DecorationImage(
                              image: AssetImage('assets/history.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
>>>>>>> b90276542df069e6fa7aa73d5d6c4219a6e5a5dc
                ),
                Positioned(
                  top: 20.0,
                  bottom: 20,
                  left: 30.0,
                  right: 30,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SubjectViewModel(
                        subject: subjects[2],
                      ),
                    ],
                  ),
                ),
              ]),
              // new Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     SubjectViewModel(
              //       subject: subjects[2],
              //     )
              //   ],
              // ),
              new SizedBox(
                height: 10.0,
              ),
<<<<<<< HEAD
              new Positioned(
                bottom: 20.0,
                right: 10.0,
                child: Container(
                  height: 300.0,
                  width: 300.0,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      color: Colors.white10),
=======
              Stack(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: double.infinity,
                      height: 150.0,
                      decoration: BoxDecoration(
                          // color: Colors.white54,
                          image: new DecorationImage(
                              image: AssetImage('assets/geography.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned(
                  top: 50.0,
                  left: 50.0,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SubjectViewModel(
                        subject: subjects[3],
                      ),
                    ],
                  ),
>>>>>>> b90276542df069e6fa7aa73d5d6c4219a6e5a5dc
                ),
              ]),
              new SizedBox(
                height: 10.0,
              ),
<<<<<<< HEAD
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
       

        // iconbuttons for various subjects

        Padding(
          padding: const EdgeInsets.only(top: 10.0),
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
          height: 10.0,
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
          height: 10.0,
        ),
        new Row(
          children: <Widget>[
            Expanded(
                child: SubjectViewModel(
              subject: subjects[5],
            )),
            Expanded(
              child: SubjectViewModel(
                subject: subjects[5],
              ),
            )
          ],
        ),
        new SizedBox(
          height: 10.0,
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
      ]),

=======
              Stack(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: double.infinity,
                      height: 200.0,
                      decoration: BoxDecoration(
                          // color: Colors.white54,
                          image: new DecorationImage(
                              image: AssetImage('assets/geo.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned(
                  //top: 20.0,
                  //bottom: 20,
                  // left: 30.0,
                  // right: 30,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SubjectViewModel(
                        subject: subjects[4],
                      ),
                    ],
                  ),
                ),
              ]),
              // new Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     SubjectViewModel(
              //       subject: subjects[4],
              //     )
              //   ],
              // ),
              new SizedBox(
                height: 10.0,
              ),
              Stack(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: double.infinity,
                      height: 150.0,
                      decoration: BoxDecoration(
                          // color: Colors.white54,
                          image: new DecorationImage(
                              image: AssetImage('assets/science.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned(
                  top: 50.0,
                  left: 50.0,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SubjectViewModel(
                        subject: subjects[5],
                      ),
                    ],
                  ),
                ),
              ]),
              // new Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     SubjectViewModel(
              //       subject: subjects[5],
              //     )
              //   ],
              // ),
              new SizedBox(
                height: 10.0,
              ),
              Stack(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: double.infinity,
                      height: 150.0,
                      decoration: BoxDecoration(
                          // color: Colors.white54,
                          image: new DecorationImage(
                              image: AssetImage('assets/science.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned(
                  top: 50.0,
                  left: 50.0,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SubjectViewModel(
                        subject: subjects[6],
                      ),
                    ],
                  ),
                ),
              ]),
              // new Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     SubjectViewModel(
              //       subject: subjects[6],
              //     )
              //   ],
              // ),
              new SizedBox(
                height: 10.0,
              ),
              Stack(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: double.infinity,
                      height: 150.0,
                      decoration: BoxDecoration(
                          // color: Colors.white54,
                          image: new DecorationImage(
                              image: AssetImage('assets/science.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned(
                  top: 50.0,
                  left: 50.0,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SubjectViewModel(
                        subject: subjects[7],
                      ),
                    ],
                  ),
                ),
              ]),
              // new Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     SubjectViewModel(
              //       subject: subjects[7],
              //     )
              //   ],
              // ),
              new SizedBox(
                height: 10.0,
              ),
            ])),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
>>>>>>> b90276542df069e6fa7aa73d5d6c4219a6e5a5dc
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
