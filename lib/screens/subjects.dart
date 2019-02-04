import 'package:flutter/material.dart';
// import 'main_screen.dart';

class Subjects {

  final String sub;
  final String imgPath;
  final Color color1, color2;
  // Alignment alignment;

  Subjects({this.sub,this.imgPath, this.color1, this.color2});
}

final subjects = [
  new Subjects(sub: 'Science',imgPath: 'assets/sci_icon.png' , color1: Colors.cyan[200], color2: Colors.cyan),
  new Subjects(
      sub: 'Maths',imgPath: 'assets/math_icon.png' , color1: Colors.yellow[300], color2: Colors.orange[300]),
  new Subjects(
      sub: 'History',imgPath: 'assets/his_icon.png' , color1: Colors.brown[100], color2: Colors.brown[200]),
  new Subjects(
      sub: 'Civics',imgPath: 'assets/civ_icon.jpg', color1: Colors.green[200], color2: Colors.green[300]),
  new Subjects(
      sub: 'Geography',imgPath: 'assets/geo_icon.png' , color1: Colors.blue[100], color2: Colors.blue[300]),
  new Subjects(sub: 'Hindi',imgPath: 'assets/hin_icon.png', color1: Colors.red[100], color2: Colors.red[400]),
  new Subjects(sub: 'English',imgPath: 'assets/eng_icon.png', color1: Colors.grey[100], color2: Colors.black),
  new Subjects(sub: 'French',imgPath: 'assets/fre_icon.jpg' , color1: Colors.pink[100], color2: Colors.pink)
];

class SubjectViewModel extends StatelessWidget {
  final Subjects subject;

  SubjectViewModel({this.subject});
  @override
  Widget build(BuildContext context) {
    return new Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.white,
      margin: EdgeInsets.only(left: 5.0, right: 10.0, top: 20.0),
      child: DecoratedBox(
        child: Row(
          children: <Widget>[
            new IconButton(
                color: Colors.white,
                alignment: Alignment.centerLeft,
                iconSize: 50.0,
                onPressed: () {
                  // color1 = Colors.cyan[200];
                  // color2 = Colors.cyan;
                  // sub = 'SCIENCE';
                  // Navigator.pushNamed(context, '/science');
                },
                icon: Image.asset(
                  subject.imgPath,
                  // width: 100.0,
                  // height: 100.0,
                  
                  )
                
                ),
            Text(subject.sub,
                style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))
          ],
        ),
        decoration: new BoxDecoration(
            borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
                colors: [subject.color1,subject.color2]
                )
                ),
      ),
      /*child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/science.png'),
                 ),*/
    );

    // return Container(
    //   height: 60.0,
    //   width: 80.0,
    //   child: new Text(subject.sub,
    //       style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
    //   decoration: new BoxDecoration(
    //       borderRadius: new BorderRadius.circular(10.0),
    //       gradient: new LinearGradient(
    //           begin: Alignment.topLeft,
    //           end: Alignment.bottomRight,
    //           colors: [subject.color1, subject.color2])),
    // );
  }
}

// class Sample extends StatefulWidget {
//   SampleState createState() => SampleState();
// }

// class SampleState extends State<Sample> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: ListView(
//           children: <Widget>[
//             Container(
//                 height: 100.0,
//                 margin: EdgeInsets.only(),
//                 child: DecoratedBox(
//                   child: Column(
//                     children: <Widget>[
//                       Container(
//                         margin: EdgeInsets.only(bottom: 30.0),
//                       ),
//                       Text(
//                         '$sub',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 40.0),
//                       ),
//                     ],
//                   ),
//                   decoration: new BoxDecoration(
//                       gradient: LinearGradient(
//                           begin: Alignment.centerLeft,
//                           end: Alignment.centerRight,
//                           colors: [color1, color2])),
//                 )),
//             Container(
//               margin: EdgeInsets.only(bottom: 50.0),
//             ),
//             Row(
//               children: <Widget>[
//                 Expanded(
//                     child: Card(
//                         margin:
//                             EdgeInsets.only(left: 30.0, right: 40.0, top: 20.0),
//                         child: DecoratedBox(
//                           decoration: new BoxDecoration(
//                               gradient: LinearGradient(
//                                   begin: Alignment.centerLeft,
//                                   end: Alignment.centerRight,
//                                   colors: [color1, color2])),
//                           child: Column(
//                             children: <Widget>[
//                               IconButton(
//                                 icon: new Image.asset('assets/book.png'),
//                                 onPressed: () {},
//                                 iconSize: 40.0,
//                               ),
//                               Text(
//                                 'NCERT',
//                                 style: TextStyle(
//                                     fontSize: 30.0,
//                                     fontWeight: FontWeight.bold),
//                               )
//                             ],
//                           ),
//                         ))),
//                 Expanded(
//                     child: Card(
//                         margin:
//                             EdgeInsets.only(left: 40.0, right: 30.0, top: 20.0),
//                         child: DecoratedBox(
//                           decoration: new BoxDecoration(
//                               gradient: LinearGradient(
//                                   begin: Alignment.centerLeft,
//                                   end: Alignment.centerRight,
//                                   colors: [color1, color2])),
//                           child: Column(
//                             children: <Widget>[
//                               IconButton(
//                                 icon: new Image.asset('assets/notes.png'),
//                                 onPressed: () {},
//                                 iconSize: 40.0,
//                               ),
//                               Text(
//                                 'NOTES',
//                                 style: TextStyle(
//                                     fontSize: 30.0,
//                                     fontWeight: FontWeight.bold),
//                               )
//                             ],
//                           ),
//                         )))
//               ],
//             ),
//             Container(
//               margin: EdgeInsets.only(bottom: 50.0),
//             ),
//             Row(
//               children: <Widget>[
//                 Expanded(
//                     child: Card(
//                         margin:
//                             EdgeInsets.only(left: 30.0, right: 40.0, top: 20.0),
//                         child: DecoratedBox(
//                           decoration: new BoxDecoration(
//                               gradient: LinearGradient(
//                                   begin: Alignment.centerLeft,
//                                   end: Alignment.centerRight,
//                                   colors: [color1, color2])),
//                           child: Column(
//                             children: <Widget>[
//                               IconButton(
//                                 icon: new Image.asset('assets/test.png'),
//                                 onPressed: () {},
//                                 iconSize: 40.0,
//                               ),
//                               Text(
//                                 'TESTS',
//                                 style: TextStyle(
//                                     fontSize: 30.0,
//                                     fontWeight: FontWeight.bold),
//                               )
//                             ],
//                           ),
//                         ))),
//                 Expanded(
//                     child: Card(
//                         margin:
//                             EdgeInsets.only(left: 40.0, right: 30.0, top: 20.0),
//                         child: DecoratedBox(
//                           decoration: new BoxDecoration(
//                               gradient: LinearGradient(
//                                   begin: Alignment.centerLeft,
//                                   end: Alignment.centerRight,
//                                   colors: [color1, color2])),
//                           child: Column(
//                             children: <Widget>[
//                               IconButton(
//                                 icon: new Image.asset('assets/hw1.png'),
//                                 onPressed: () {},
//                                 iconSize: 40.0,
//                               ),
//                               Text(
//                                 'HW',
//                                 style: TextStyle(
//                                     fontSize: 30.0,
//                                     fontWeight: FontWeight.bold),
//                               )
//                             ],
//                           ),
//                         )
//                         ))
//               ],
//             ),
//             Container(
//               margin: EdgeInsets.only(
//                 top: 30.0,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

// }
