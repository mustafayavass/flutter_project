import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  String _changeCity = "İstanbul";
  List<String> _sehirler = [
    "İstanbul",
    "Kocaeli",
    "Konya",
    "İzmir",
    "Ankara",
    "Osmaniye"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drop Down Button",
          style: TextStyle(fontSize: 25, color: Colors.blueGrey),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: DropdownButton(
            value: _changeCity,
            onChanged: _changedCity,
            items: _sehirler.map<DropdownMenuItem<String>>((String sehir) {
              return DropdownMenuItem<String>(
                value: sehir,
                child: Text(sehir),
              );
            }).toList()),
      ),
    );
  }

  void _changedCity(String? newCity) {
    if (newCity != null) {
      setState(() {
        _changeCity = newCity;
      });
    }
  }
}
