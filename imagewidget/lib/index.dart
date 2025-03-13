import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Image Widget",
          style: TextStyle(color: Colors.cyan),
        ),
      ),
      body: Image.asset(
        "img/wallp.jpeg",
        height: 300,
        width: 300,
        alignment: Alignment.topRight,
        fit: BoxFit.contain,
      ),
    );
  }
}
