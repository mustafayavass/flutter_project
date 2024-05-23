import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
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
              child: Text(
                "Elevated Button",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            backgroundColor: Colors.lightBlue,
          ),
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
                child: Text(
              _count.toString(),
              style: TextStyle(fontSize: 50),
            )),
            /*ElevatedButton.icon(
              onPressed: _buttonClick,
              icon: Icon(
                Icons.watch,
                color: Colors.black,
              ),
              label: Text(
                "Sayacı Arttır",
                style: TextStyle(color: Colors.pink, fontSize: 25),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
            )*/
            ElevatedButton(
              onPressed: _buttonClick,
              child: Text("+"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue, 
                  shape: 
                  CircleBorder()
                  //StadiumBorder()
                  //RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  //BeveledRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
            )
          ])),
    );
  }

  void _buttonClick() {
    setState(() {
      _count++;
    });
  }
}
