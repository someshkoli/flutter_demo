import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              // backgroundImage: AssetImage('images/aa.jpg'),
              backgroundColor: Colors.black,
            ),
            Text(
              'Somesh koli',
              style: TextStyle(
                fontFamily: 'pacifico',
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'no developer',
              style: TextStyle(
                  fontFamily: 'pacifico',
                  fontSize: 30,
                  color: Colors.blue[100],
                  letterSpacing: 10,
                  fontWeight: FontWeight.bold),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                // padding: EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(Icons.mail),
                    title:Text(
                      'aaa@someshkoli.me',
                      style: TextStyle(fontSize: 25, color: Colors.indigo),
                    ),
                    
                  )
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                // padding: EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(Icons.call),
                    title:Text(
                      '0000000000',
                      style: TextStyle(fontSize: 25, color: Colors.indigo),
                    ),
                    
                  )
                )),
          ],
        )),
        backgroundColor: Colors.blue,
      ),
    );
  }
}