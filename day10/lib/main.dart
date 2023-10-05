import 'package:flutter/material.dart';
import 'package:day10/HomePage/HomePage.dart';
import 'package:secret_cat_sdk/secret_cat_sdk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}