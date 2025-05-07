import 'package:flutter/material.dart';
import 'dart:async';
import './home-screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
          context, 'MaterialPageRoute(builder: (context) => HomeScreen())');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/timy-logo.png',
              width: 150,
              height: 150,
            ),   
          ],
        ),
      ),
    );
  }
}
