import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'screens/maths.dart';
import 'screens/science.dart';
import 'screens/history.dart';
import 'screens/civics.dart';
import 'screens/geo.dart';
import 'screens/eng.dart';

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
          '/science': (context) => Sample(),
          '/maths': (context) => Maths(),
          '/history': (context) => History(),
          '/civics': (context) => Civics(),
          '/geo': (context) => Geo(),
          '/eng': (context) => English()
        },
    );
  }
}