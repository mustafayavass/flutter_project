import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  String words = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Floating Action Button")),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(child: Text(words)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _printScreen();
          },
          child: Icon(Icons.question_answer),
        ),
      ),
    );
  }
  void _printScreen() {
    setState(() {
      words = "Floating Action Button a tıklandı.";
    });
  }
}
