import 'package:flutter/material.dart';
import 'package:routepage/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Birinci Sayfa",
          style: TextStyle(fontSize: 25, color: Colors.lightBlueAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _ikinciSayfayiAc(context);
            },
            child: Text("İkinci Sayfaya Git")),
      ),
    );
  }

  void _ikinciSayfayiAc(BuildContext context) {
    MaterialPageRoute sayfayolu =
        MaterialPageRoute(builder: (BuildContext context) {
      return Secondpage();
    });
    Navigator.push(context, sayfayolu);
  }
}
