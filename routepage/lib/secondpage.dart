import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  String _yaziIcerigi;
  Secondpage(this._yaziIcerigi);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "İkinci Sayfa",
          style: TextStyle(fontSize: 25, color: Colors.lightBlueAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _yaziIcerigi,
              style: TextStyle(fontSize: 35, color: Colors.deepOrangeAccent),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,25);
                },
                child: Text(
                  "İlk Sayfaya Geri Dön",
                  
                ))
          ],
        ),
      ),
    );
  }
}
