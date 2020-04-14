import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int donut;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: ImageProvider(),
              backgroundColor: Colors.red,
              radius: 100,

            ),

          ],
        )),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
