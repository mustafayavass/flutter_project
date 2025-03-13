import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  String _text = "Değişecek Yazi"; //text
  String _textField = ""; //textfield
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Textfield",
            style: TextStyle(color: Colors.white),
          ),
        ),
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
      )),
    );
  }
  _textFieldChanged(String newtext) {
    setState(() {
      _textField = newtext;
    });
  }
}
