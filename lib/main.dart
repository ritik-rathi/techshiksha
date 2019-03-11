import 'package:flutter/material.dart';
import 'package:techshiksha_student/LoginPage/loginPage.dart';
import 'package:techshiksha_student/student_screens/attendance.dart';
import 'package:techshiksha_student/student_screens/testscores.dart';
// import 'package:techshiksha_student/screens/navigation_screen.dart';
import 'student_screens/main_screen.dart';
import 'student_screens/subjects.dart';
import 'student_screens/nav.dart';
import 'student_screens/ncert.dart';
import 'student_screens/hw.dart';
import 'student_screens/profile.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
        initialRoute: '.',
        routes: {
          '.':(context) => MainScreen(),
          '/home':(context)=> MainScreen(),
          '/science': (context) => SubjectViewModel(),
          '/navscreen':(context)=>NavigationScreen(),
          '/ncert': (context) => Ncert(),
          '/Profile':(context)=> Profile(),
          '/Attendance':(context)=> Attendance(),
          '/Scores':(context)=> TestScore(),
          // '/drawer': (context) => Drawer1()
          '/SubScore' : (context) => Scores(),
          '/hw' : (context) => Hw()
        },
    );
  }
}