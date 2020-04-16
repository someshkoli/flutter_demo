import 'package:flutter/material.dart';
import './input_page.dart';
import './bmi_result.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        accentColor: Colors.teal,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        ),
      // home: InputPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => Result()
      },
      );
  }
}

