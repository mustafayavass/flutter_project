import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Container Widget",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                color: Colors.white),
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        width: 300,
        height: 400,
        color: Colors.grey,
        margin: EdgeInsets.only(left: 50, top: 50),
        padding: EdgeInsets.all(20),
        child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ultrices nulla. Curabitur maximus malesuada ultrices. Vivamus tempor laoreet ante, vitae sagittis libero imperdiet vel. Sed a ligula quis dui viverra scelerisque in vel erat. Aenean auctor purus in ultrices tempor. Etiam mollis ipsum lorem, ut sodales risus venenatis sit amet. Vestibulum in pretium nibh. Nullam eu dapibus ante. Ut ornare ante est, non ultricies magna tempus vel. Ut vestibulum metus id eros gravida ornare. Nunc luctus fermentum orci, et lobortis dolor posuere sit amet. Phasellus eu neque ac sapien finibus efficitur. "),
      ),
    );
  }
}
