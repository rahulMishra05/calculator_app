import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Calculator",
          style: TextStyle(
            fontWeight: FontWeight.bold),),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter number 1"
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter number 1"
              ),
            ),
          ],
        ),
      )
    );
  }
}
