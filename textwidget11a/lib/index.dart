import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Text Widget",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.ltr,
            style:
                GoogleFonts.monoton(fontSize: 20, fontWeight: FontWeight.bold)
            /*TextStyle(
                fontFamily: "Roboto",
                fontSize: 25,
                color: Colors.red,
                fontStyle: FontStyle.italic,
                backgroundColor: Colors.grey,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline)*/
            ),
      ),
    );
  }
}
