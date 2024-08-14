// lib/main.dart

import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'home.dart';
import 'toolbox.dart';
import 'login.dart';
import 'contact_us.dart';
import 'special_thanks.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speedy App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyScreen(),
    );
  }
}
