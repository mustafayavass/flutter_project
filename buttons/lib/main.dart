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
          title: Center(
            child: Text("Buttons"),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                _count.toString(),
                style: TextStyle(color: Colors.blue, fontSize: 55),
              ),
              OutlinedButton(
                  onPressed: _clickButton, child: Text("Sayacı Arttır")),
              TextButton(onPressed: _clickButton, child: Text("Sayacı Arttır")),
              IconButton(
                  onPressed: _clickButton,
                  icon: Icon(Icons.check_circle),
                  color: Colors.green,
                  iconSize: 100)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _clickButton,
          child: Icon(Icons.question_answer),
          heroTag: "Anasayda FAB",
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      ),
    );
  }

  void _clickButton() {
    setState(() {
      _count++;
    });
  }
}
