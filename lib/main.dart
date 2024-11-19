import 'package:bare_lab/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:bare_lab/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: const Color(0xFFFF6F61),
          colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFFF6F61), // Primary color for ColorScheme
          secondary: const Color(0xFFF58A7D), // Secondary color for ColorScheme
          surface: const Color(0xFFFFF7EF), // Background Color
          ),
        ),
      home: const LoginPage()
      ),
    );
  }
}