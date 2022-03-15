import 'package:flutter/material.dart';
import 'package:test12/Widgets/Navbar.dart';
import 'package:test12/screen/button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Education',
      home: Navbar(),
    );
  }
}