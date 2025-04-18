import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  String _nameSurname = "";
  String _textField = "";
  String _text = "Yazı eklenmedi.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog Sayfam",
            style: TextStyle(color: Colors.white, fontSize: 25)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("img/database.png"),
                radius: 80,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "MSSQL Nedir?",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 40, bottom: 35),
                  width: 480,
                  child: Text(textAlign: TextAlign.justify, _text))
            ],
          ),
          Container(
            width: 300,
            padding: EdgeInsets.only(bottom: 20),
            child: TextField(
              onChanged: _textFieldChanged,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _text = _nameSurname + _textField;
                  });
                },
                child: Text(
                  "Yazıyı Ekle",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.favorite_border_outlined),
              Icon(Icons.share),
              Icon(Icons.send)
            ],
          )
        ],
      ),
    );
  }

  void _textFieldChanged(String newtext) {
    _textField = newtext;
  }
}
