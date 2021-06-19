import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(
          seconds: 1,
        ), () {
      Navigator.pushReplacement(
        context,
        PageTransition(
            child: HomeScreen(), type: PageTransitionType.leftToRight),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Text(
          'FOOD DELIVERY',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
