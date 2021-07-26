import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 + num2;
    });
  }

  void doSubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 - num2;
    });
  }

  void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 * num2;
    });
  }

  void doDivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 ~/ num2;
    });
  }

    void doClear() {
      setState(() {
        t1.text = "0";
        t2.text = "0";
      });
    }
  

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
                "Output : $sum",
                style: new TextStyle(
                    fontSize: 25.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter number 1"),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter number 2"),
                controller: t2,
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                      child: Text("+"),
                      color: Colors.greenAccent,
                      onPressed: doAddition),
                  new MaterialButton(
                      child: Text("-"),
                      color: Colors.greenAccent,
                      onPressed: doSubtraction),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                      child: Text("x"),
                      color: Colors.greenAccent,
                      onPressed: doMultiplication),
                  new MaterialButton(
                      child: Text("/"),
                      color: Colors.greenAccent,
                      onPressed: doDivision),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                      child: Text(
                        "Clear",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      color: Colors.yellowAccent,
                      onPressed: doClear),
                ],
              )
            ],
          ),
        ));
  }
}
