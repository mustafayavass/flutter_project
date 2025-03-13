import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _sayac = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Elevated Button",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigoAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _sayac.toString(),
                style: TextStyle(fontSize: 50),
              ),
              ElevatedButton.icon(
                onLongPress: _buttonClear,
                onPressed: _buttonClick,
                label: Text(
                  "Sayacı Arttır",
                  style: TextStyle(color: Colors.white),
                ),
                icon: Icon(
                  Icons.watch,
                  color: Colors.red,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 70, 10, 10)),
              )
              
              /*ElevatedButton(
                onPressed: _buttonClick,
                child: Text(
                  "Sayacı Arttır",
                  style: TextStyle(color: Colors.white),
                ),
                onLongPress: _buttonClear,                
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    //padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                    elevation: 10,
                    shape:
                        //CircleBorder()
                        BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10))
                    //StadiumBorder()
                    /*RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))*/
                    ),
              )*/
            ],
          ),
        ));
  }

  void _buttonClick() {
    setState(() {
      _sayac++;
    });
  }

  void _buttonClear() {
    setState(() {
      _sayac = 0;
    });
  }
}
