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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  onChanged: _textFieldChanged,
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 1,
                  maxLength: 10,
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                  obscureText: true,
                  enabled: true,
                  autofocus: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: "E-posta adresinizi giriniz",
                      contentPadding: EdgeInsets.all(40),
                      counterText: "E-posta",
                      counter: Icon(Icons.access_alarms),
                      filled: true,
                      fillColor: Colors.grey,
                      //hintText: "E-posta adresinizi giriniz"
                      prefixIcon: Icon(Icons.text_fields),
                      prefixText: "E-mail: ",
                      suffixIcon: Icon(Icons.wallet),
                      suffixText: "E-mail"),
                ),
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
