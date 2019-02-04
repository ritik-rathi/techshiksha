import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'screens/subjects.dart';

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
          '/science': (context) => SubjectViewModel()
        },
    );
  }
}