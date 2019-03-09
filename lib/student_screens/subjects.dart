import 'package:flutter/material.dart';
// import 'main_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//created a class that can be used in every file since we wanted generic code
class Subjects {
 String sub;
 final String imgPath;
 Color color1, color2;

  //class constructor
  Subjects({this.sub, this.imgPath, this.color1, this.color2});
}

//list of the items we want to display. 
//can be modified by adding new items

final subjects = [
  new Subjects(
      sub: 'Science',
      imgPath: 'assets/science_col.png',
      color1: Colors.cyan[50],
      color2: Colors.cyan[300]),
  new Subjects(
      sub: 'Maths',
      imgPath: 'assets/math_icon.png',
      color1: Colors.yellow[100],
      color2: Colors.yellow[400]),
  new Subjects(
      sub: 'History',
      imgPath: 'assets/his_col.jpg',
      color1: Colors.orange[50],
      color2: Colors.orange[300]),
  new Subjects(
      sub: 'Civics',
      imgPath: 'assets/civ_col.jpg',
      color1: Colors.green[50],
      color2: Colors.green[300]),
  new Subjects(
      sub: 'Geography',
      imgPath: 'assets/geo_col.jpg',
      color1: Colors.blue[50],
      color2: Colors.blue[300]),
  new Subjects(
      sub: 'Hindi',
      imgPath: 'assets/hin_col.png',
      color1: Colors.red[50],
      color2: Colors.red[300]),
  new Subjects(
      sub: 'English',
      imgPath: 'assets/eng_col.png',
      color1: Colors.purple[50],
      color2: Colors.purple[300]),
  new Subjects(
      sub: 'French',
      imgPath: 'assets/fre_icon.jpg',
      color1: Colors.pink[50],
      color2: Colors.pink[300])
];

String sub_final;
Color color11, color22;

//how this data looks on screen is decided by this widget
class SubjectViewModel extends StatelessWidget {
  final Subjects subject;

  SubjectViewModel({this.subject});
  @override
  Widget build(BuildContext context) {
    return new Container(
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      //color: Colors.white,
      margin: EdgeInsets.only(left: 5.0, right: 10.0, top: 20.0),
      child:  Column(
          children: <Widget>[
            new IconButton(
                color: Colors.white,
                alignment: Alignment.centerLeft,
                iconSize: 75.0,
                onPressed: () {
                  // color1 = Colors.cyan[200];
                  // color2 = Colors.cyan;
                  // sub = 'SCIENCE';
                  color11 = subject.color1;
                  color22 = subject.color2;
                  sub_final = subject.sub;
                  Navigator.pushNamed(context, '/navscreen');
                },
                icon: Image.asset(
                  subject.imgPath,
                  // width: 100.0,
                  // height: 100.0,
                )),
            Text(subject.sub,
                style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "WorkSansSemiBold"))
          ],
        ),
        // decoration: new BoxDecoration(
        //     borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
        //     shape: BoxShape.rectangle,
        //     gradient: LinearGradient(
        //         begin: FractionalOffset.centerLeft,
        //         end: FractionalOffset.centerRight,
        //         colors: [subject.color1, subject.color2])),
           
    );
  }
}

/*class NavigationScreen extends StatelessWidget {
  final Subjects subject;

  NavigationScreen({this.subject});

  @override
  Widget build(BuildContext context) {
    
  }
}*/

