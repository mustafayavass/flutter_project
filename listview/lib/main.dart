import 'package:flutter/material.dart';
import 'package:listview/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
      debugShowCheckedModeBanner: false,
    );
  }
}
