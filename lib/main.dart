import 'package:flutter/material.dart';
import 'package:twosome_example/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TwoSome Clone',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

