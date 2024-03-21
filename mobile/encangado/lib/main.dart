import 'package:flutter/material.dart';

//import 'Pages/home.pege.dart';
import 'Pages/login/login.page.dart';

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
        appBarTheme: const AppBarTheme(
            elevation: 0, color: Colors.transparent, centerTitle: true),
        colorScheme: const ColorScheme.light(background: Colors.white),
      ),
      home: const LoginPage(),
    );
  }
}
