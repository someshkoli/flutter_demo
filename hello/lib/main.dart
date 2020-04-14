import 'package:flutter/material.dart';

void main() => (MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int donuts = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("hello"),
        ),
        body: Center(
          child: Text('No of donuts : $donuts', style: TextStyle(fontSize: 40)),
        ),
        // floatingActionButton: FloatingActionButton(
        //     child: Icon(Icons.add),
        //     backgroundColor: Colors.greenAccent,
        //     // onPressed: () {
        //     //   // setState(() {
        //     //   //   donuts++;
        //     //   // });
        //     // }
        //     ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
