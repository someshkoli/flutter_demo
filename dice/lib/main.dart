import 'package:flutter/material.dart';
import 'dart:math';

final _random = new Random();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Center(child: Text("dice")),
              backgroundColor: Colors.grey,
            ),
            backgroundColor: Colors.black,
            body: Column(
              children: <Widget>[
                Text(
                  "Press the button to roll dice",
                  style:
                      TextStyle(backgroundColor: Colors.orange, fontSize: 50),
                ),
                Container(
                  color: Colors.red,
                  // margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
                  child: DicePage(),
                ),
              ],
            )));
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int d1 = 2, d2 = 3;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              print("hello");
              setState(() {
                d1 = _random.nextInt(6-1);
              });
            },
            child: Image.asset('images/$d1.jpg'),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              print("hello");
              setState(() {
                d2 = _random.nextInt(6-1);
              });
            },
            child: Image.asset('images/$d2.jpg'),
          ),
        ),
      ],
    );
  }
}
