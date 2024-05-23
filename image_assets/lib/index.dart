import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Image",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.brown,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('img/coder.jpg'),
              radius: 200,
            )
          ],
        )
        /*Center(
        child: Image.asset(
          'img/coder.jpg',
          fit: BoxFit.cover,
          width: 400,
          height: 400,
        ),
      ),*/
        );
  }
}
