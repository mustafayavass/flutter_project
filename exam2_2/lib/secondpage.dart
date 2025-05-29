import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  List<String> _sehirler = [];
  Secondpage(this._sehirler);

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Şehirler",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.location_on, color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: _listCreate,
                itemCount: widget._sehirler.length,
              ),
            ),
            IconButton(
              onPressed: _removeList,
              icon: Icon(Icons.remove, size: 50, color: Colors.red),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget _listCreate(BuildContext context, int index) {
    return Card(
      child: ListTile(title: Text(widget._sehirler[index])),
      elevation: 10,
    );
  }

  void _removeList() {
    setState(() {
      widget._sehirler.removeAt(widget._sehirler.length - 1);
    });
  }
}
