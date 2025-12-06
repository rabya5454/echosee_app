import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/subtitle_screen.dart';
import 'screens/saved_conversations_screen.dart';
import 'screens/settings_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EchoSee',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/subtitle': (context) => SubtitleScreen(),
        '/saved': (context) => SavedConversationsScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
