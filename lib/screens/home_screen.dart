import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/subtitle'), child: Text('Go to Subtitle')),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/saved'), child: Text('Saved Conversations')),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/settings'), child: Text('Settings')),
          ],
        ),
      ),
    );
  }
}
