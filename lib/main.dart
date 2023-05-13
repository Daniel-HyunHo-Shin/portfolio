import 'package:flutter/material.dart';
import 'package:portfolio/Theme/pallete.dart';

import 'screens/home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Pallete.appTheme,
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
