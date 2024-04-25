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
            title: Text("Image Widget"),
          ),
          body: Center(
            child: Image.network(
              'https://images.pexels.com/photos/441222/pexels-photo-441222.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              height: 500,
              width: 500,
            ),
          )),
    );
  }
}
