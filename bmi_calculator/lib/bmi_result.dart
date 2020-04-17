import 'package:bmi_calculator/designConstants.dart';
import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';

void main() => runApp(Result());

class Result extends StatelessWidget {
  Result({@required this.bmiReuslt,@required this.resultText,@required this.interpret});
  final String bmiReuslt;
  final String resultText;
  final String interpret;
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
            style: TextStyle(fontSize: 60),
          ),
          Expanded(
            child: ReusableWidget(
              color_v: Color(activeCardColor),
              cardChild: Container(
                // height: ,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Normal',
                      style: TextStyle(color: Colors.green, fontSize: 30),
                    ),
                    Text(
                      bmi.toString(),
                      style:
                          TextStyle(fontSize: 100, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'lorem ipsum set dolet amet asdas',
                      style: lableTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              color: Color(0xFFEB1555),
              height: bottomComtainerHeight,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/',
              );
            },
          )
        ],
      ),
    );
  }
}
