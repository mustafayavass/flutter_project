import 'package:flutter/material.dart';
import 'package:routepage/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController _controller = TextEditingController();
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: _controller,),
            ElevatedButton(
                onPressed: () {
                  _ikinciSayfayiAc(context);
                },
                child: Text("İkinci Sayfaya Git")),
          ],
        ),
      ),
    );
  }

  void _ikinciSayfayiAc(BuildContext context) {
    MaterialPageRoute sayfayolu =
        MaterialPageRoute(builder: (BuildContext context) {
      return Secondpage(_controller.text);
    });
    Navigator.push(context, sayfayolu);
  }
}
