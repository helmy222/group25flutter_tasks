import 'package:flutter/material.dart';
import 'package:tasks/task4/task4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlogScreen(),
    );
  }
}
