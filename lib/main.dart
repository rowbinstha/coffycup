import 'package:coffycup/presentations/screens/home_screen.dart';
import 'package:coffycup/presentations/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      // home: WelcomeScreen(),
      home: HomeScreen(),
    );
  }
}
