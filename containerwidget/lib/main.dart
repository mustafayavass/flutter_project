import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Widget"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          height: 400,
          width: 400,
          color: Colors.grey,
          margin: EdgeInsets.only(top: 50, left: 40),
          padding: EdgeInsets.all(30),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In maximus tellus vitae eros lobortis, a rutrum tellus tempor. Cras et mauris arcu. Nullam non finibus arcu. Vivamus tortor arcu, rutrum ut consequat eget, luctus rhoncus dui. Donec vulputate ante magna, finibus dignissim metus aliquet at. Suspendisse aliquam malesuada turpis nec porta. Sed sed quam aliquam, mollis sem ut, vulputate nisl. Nulla laoreet fringilla velit, quis bibendum libero maximus vel. Vestibulum porta quis massa sit amet facilisis. Aenean quis purus placerat, ultricies lectus in, dapibus tortor. Praesent eros velit, faucibus id viverra vitae, venenatis vitae dolor. Proin dui tortor, tincidunt vitae justo a, iaculis aliquam magna. Nulla imperdiet laoreet pulvinar. Ut volutpat diam at odio dignissim molestie. Cras gravida velit in sapien maximus, quis bibendum mauris bibendum. Vivamus ac condimentum diam.",
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
