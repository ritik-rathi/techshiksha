import 'package:flutter/material.dart';
import 'package:techshiksha_student/LoginPage/loginPage.dart';
import 'package:techshiksha_student/student_screens/attendance.dart';
import 'package:techshiksha_student/entry/entry_screen.dart';
import 'package:techshiksha_student/student_screens/testscores.dart';
// import 'package:techshiksha_student/screens/navigation_screen.dart';
import 'student_screens/main_screen.dart';
import 'student_screens/subjects.dart';
import 'student_screens/nav.dart';
import 'student_screens/ncert.dart';
import 'student_screens/hw.dart';
import 'student_screens/profile.dart';
import 'teacher_screen/opening.dart';
import 'teacher_screen/takeAttendance.dart';
import 'teacher_screen/upload.dart';
import 'entry/choose.dart';
import 'parent_screen/start.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: EntryScreen(),
        initialRoute: '.',
        theme: ThemeData.light(),
        routes: {
          '.':(context) => EntryScreen(),
          '/home':(context)=> Choose(),
          '/science': (context) => SubjectViewModel(),
          '/navscreen':(context)=>NavigationScreen(),
          '/ncert': (context) => Ncert(),
          '/Profile':(context)=> Profile(),
          '/Attendance':(context)=> Attendance(),
          '/Scores':(context)=> TestScore(),
          // '/drawer': (context) => Drawer1()
          '/SubScore' : (context) => Scores(),
          '/hw' : (context) => Hw(),
          '/take': (context) => TakeAttendance(),
          '/upload': (context) => Upload(),
          //'choose': (context) => Choose()
          '/student': (context) => MainScreen(),
          '/teacher': (context) => TeacherMain(),
          '/parent': (context) => PStart()
        },
    );
  }
}