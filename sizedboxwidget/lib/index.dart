import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SizedBox",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.grey,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.yellowAccent,
          ),
        ],
      ),
    );
  }
}
