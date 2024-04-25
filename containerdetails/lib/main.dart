import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row and Column"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.orange,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.lime,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              )
            ]),
      ),
    );
  }
}
