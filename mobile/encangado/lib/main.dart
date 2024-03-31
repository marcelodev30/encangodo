import 'package:encangado/Pages/sign_In_Up/login/login.page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //appBarTheme: const AppBarTheme(
        //    elevation: 0, color: Colors.transparent, centerTitle: false),
        colorScheme: const ColorScheme.light(background: Colors.white),
      ),
      home: const LoginPage(),
    );
  }
}
