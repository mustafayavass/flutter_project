import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Text Button")),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _count.toString(),
                style: TextStyle(color: Colors.blue, fontSize: 55),
              ),
              IconButton(
                onPressed: _clickButton,
                icon: Icon(Icons.check_circle),
                color: Colors.green,
                iconSize: 100,
              )
              /*TextButton(
                  onPressed: _clickButton,
                  child: Text(
                    "Sayacı Arttır",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ))*/
            ],
          ))),
    );
  }

  void _clickButton() {
    setState(() {
      _count++;
    });
  }
}
