import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});
  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buttons",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: TextStyle(fontSize: 50),
            ),
            OutlinedButton(onPressed: _click, child: Text("Sayacı Arttır")),
            TextButton(onPressed: _click, child: Text("Sayacı Arttır")),
            IconButton(
              onPressed: _click,
              icon: Icon(Icons.check_circle),
              iconSize: 50,
              color: Colors.green,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _click,
        child: Icon(Icons.message),
        heroTag: "AnaSayfa",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }

  void _click() {
    setState(() {
      count++;
    });
  }
}
