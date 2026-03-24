import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller_ka = TextEditingController();
  TextEditingController controller_sif = TextEditingController();
  String mesaj = "";
  String ka = "admin";
  String sifre = "admin1234";
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          centerTitle: true,
          title: Text(
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_box, size: 150, color: Colors.lightBlue),
              SizedBox(height: 50),
              Container(
                child: TextField(
                  controller: controller_ka,
                  decoration: InputDecoration(labelText: "Kullanıcı Adı"),
                ),
                width: 300,
              ),
              SizedBox(height: 25),
              Container(
                child: TextField(
                  controller: controller_sif,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Şifre"),
                ),
                width: 300,
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _kontrolEt,
                    child: Text(
                      "Giriş Yap",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Kayıt Ol",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(
                mesaj,
                style: TextStyle(
                  fontSize: 40,
                  color: flag ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _kontrolEt() {
    setState(() {
      if (ka == controller_ka.text && sifre == controller_sif.text) {
        mesaj = "Giriş Başarılı";
        flag = true;
      } else {
        mesaj = "Yanlış Giriş!";
        flag = false;
      }
    });
  }
}
