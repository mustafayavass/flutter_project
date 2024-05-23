import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _text = "";
  String _textField = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("TextField")),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                onChanged: _textFieldChanged,
              ),
              Text(_text),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _text = _textField;
                    });
                  },
                  child: Text("Yazıyı Değiştir"))
            ],
          ),
        ),
      ),
    );
  }

  void _textFieldChanged(String newText) {
    _textField = newText;
  }
}
