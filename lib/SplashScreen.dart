import 'dart:async';
import 'package:flutter/material.dart';
import 'Login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
        () => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xF3F4F6),
        child: Center(
          child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Image.asset('assets/logo.jpg',width: 300),
              Text('Shoes App',
                  style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    )
                ),
              ],
          ),
        ),
      ),
    );

  }
}
