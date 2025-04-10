import 'package:flutter/material.dart';
import 'package:listview/sehir.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Sehir> _sehirler = [
    Sehir("İstanbul", 15000000, 34),
    Sehir("Ankara", 5500000, 6),
    Sehir("İzmir", 4350000, 35),
    Sehir("Bursa", 3051452, 16),
    Sehir("Antalya", 2502140, 7),
    Sehir("Adana", 2254101, 1),
    Sehir("Konya", 2234561, 42),
    Sehir("Şanlıurfa", 2070014, 63),
    Sehir("Gaziantep", 2060078, 27),
    Sehir("Kocaeli", 1950144, 41),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "ListView",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: ListView.builder(
            itemCount: _sehirler.length,
            itemBuilder: _listCreate,
          ),
        ));
  }
  Widget _listCreate(BuildContext context, int index) {
    return Column(
      children: [
        Text(_sehirler[index].isim),
        SizedBox(
          height: 8,
        ),
        Text(_sehirler[index].nufus.toString()),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
