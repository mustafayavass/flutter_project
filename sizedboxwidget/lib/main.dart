//SİZEDBOX WİDGET
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
          title: Text("SizedBox Widget"),
        ),
        body: Row(children: [
          SizedBox(
            width: 100,
            height: 100,
            child: FlutterLogo(),
          ),
          FlutterLogo(),
          SizedBox(
            width: 50,
            height: 50,
          ),
          FlutterLogo()
        ]),
      ),
    );
  }
}
