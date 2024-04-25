import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Text Widget")),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Text("Google Fonts",
            textAlign: TextAlign.center,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.ltr,
            style:
                GoogleFonts.monoton(fontSize: 30, fontWeight: FontWeight.w500)
            /*TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
              backgroundColor: Colors.lightBlue,
              decoration: TextDecoration.underline),*/
            ),
      ),
    );
  }
}
