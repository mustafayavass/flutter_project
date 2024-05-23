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
              title: Center(child: Text("Image Widget")),
              backgroundColor: Colors.amber,
            ),
            body: Column(
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.network(
                      'https://images.pexels.com/photos/441222/pexels-photo-441222.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset("img/bird.jpg"),
                )
              ],
            )));
  }
}
