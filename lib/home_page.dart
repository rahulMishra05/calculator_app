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
            style: new TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Output :",
                style: new TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                ),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter number 1"),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter number 2"),
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(child: Text("+"), 
                  color: Colors.greenAccent,
                  onPressed: () {}),
                  new MaterialButton(child: Text("-"), 
                  color: Colors.greenAccent,
                  onPressed: () {}),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(child: Text("x"), 
                  color: Colors.greenAccent,
                  onPressed: () {}),
                  new MaterialButton(child: Text("/"), 
                  color: Colors.greenAccent,
                  onPressed: () {}),
                ],
              ),
            ],
          ),
        ));
  }
}
