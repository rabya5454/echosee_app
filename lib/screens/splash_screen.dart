import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
    return Scaffold(
      body: Center(child: Text('EchoSee - Splash')),
    );
  }
}
