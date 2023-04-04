import 'package:blog_app/screens/splash_screen.dart';
import 'package:blog_app/single_child_example.dart';
import 'package:flutter/material.dart';

import 'bottomnavigationbar.dart';
import 'drawer_example.dart';
import 'home.dart';
import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
