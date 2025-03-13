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
  String _text = "";
  String _textFieldk = "";
  String _textFields = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Login",
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_box,
                  color: Colors.blue,
                  size: 150,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 75, right: 75, bottom: 40, top: 40),
              child: TextField(
                onChanged: _textFieldChangedk,
                decoration: InputDecoration(labelText: "Kullanıcı Adı"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 75, right: 75, bottom: 40),
              child: TextField(
                onChanged: _textFieldChangeds,
                decoration: InputDecoration(labelText: "Şifre"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _check,
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(color: Colors.white),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child:
                        Text("Kayıt Ol", style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange))
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _text,
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ]),
        ),
      ),
    );
  }

  void _textFieldChangedk(String newText) {
    _textFieldk = newText;
  }

  void _textFieldChangeds(String newText) {
    _textFields = newText;
  }

  void _check() {
    if (_textFieldk == "mustafa" && _textFields == "1234") {
      setState(() {
        _text = "Giriş Başarılı";
      });
    } else {
      setState(() {
        _text = "Kullanıcı veya Şifre Hatalı!";
      });
    }
  }
}
