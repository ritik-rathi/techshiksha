import 'package:flutter/material.dart';
import 'dart:async';

class EntryScreen extends StatefulWidget {
  _EntryScreenState createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> with SingleTickerProviderStateMixin{

  AnimationController fadeAnimationController;
  Animation fadeAnimation;

  void initState() { 
    super.initState();
    fadeAnimationController = new AnimationController(vsync: this , duration: Duration(seconds: 2));
    fadeAnimation = new CurvedAnimation(curve: Curves.easeInCirc , parent: fadeAnimationController);
    Timer(Duration(seconds: 3), ()=> Navigator.pushNamed(context, '/home'));
  }
  @override
  void dispose() {
    fadeAnimationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    fadeAnimationController.forward();
    return FadeTransition(
      opacity: fadeAnimation,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height >= 775.0
                ? MediaQuery.of(context).size.height
                : 775.0,
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 1.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                    colors: [Color(0xFFE1306C), Color(0xFF833ab4)])),
            child: Center(
              child: Image(
                width: 200.0,
                height: 200.0,
                image: AssetImage('assets/logo.png'),
              ),
            )),
    );
  }
}
