import 'package:bmi_calculator/designConstants.dart';
import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';

void main() => runApp(Result());

class Result extends StatelessWidget {
  @override
  double bmi = 16.3;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'RESULT',
              style: TextStyle(fontSize: 70),
            ),
            ReusableWidget(
              color_v: Color(activeCardColor),
              cardChild: Container(
                height: 600,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Normal',
                      style: TextStyle(color: Colors.green,fontSize: 30),
                    ),
                    Text(
                      bmi.toString(),
                      style: TextStyle(fontSize: 100,fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'lorem ipsum set dolet amet asdas',
                      style: lableTextStyle,
                    ),
                  ],
                ),
              ),
            )
          ]),
    );
  }
}
