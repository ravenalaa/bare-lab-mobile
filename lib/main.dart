import 'package:flutter/material.dart';
import 'package:bare_lab/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFFFF6F61),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFFF6F61), // Primary color for ColorScheme
          secondary: const Color(0xFFF58A7D), // Secondary color for ColorScheme
          surface: const Color(0xFFFFF7EF), // Background Color
        ),
      ),
      home: MyHomePage(),
    );
  }
}