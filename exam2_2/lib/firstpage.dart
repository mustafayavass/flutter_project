import 'package:exam2_2/secondpage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<String> _sehirler = ["İstanbul", "Kocaeli", "Konya", "Ankara"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ana Ekran",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.home, color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_city, size: 50, color: Colors.deepOrange),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                _SecondPageOpen(context);
              },
              child: Text("Veriyi Aktar"),
            ),
          ],
        ),
      ),
    );
  }

  void _SecondPageOpen(BuildContext context) {
    MaterialPageRoute routepage = MaterialPageRoute(
      builder: (BuildContext context) {
        return Secondpage(_sehirler);
      },
    );
    Navigator.push(context, routepage);
  }
}
