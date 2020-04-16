import 'package:flutter/material.dart';

const double bottomComtainerHeight = 60;
const activeCardColor = 0xFF1D1E33;
const bottomContainerColor = 0xFFEB1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      print("maincard was presed");
                    },
                    child: ReusableWidget(
                      color_v: Color(0xFF1D1E33),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: ReusableWidget(
                      color_v: Color(0xFF1D1E33),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableWidget(
              color_v: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(
                    color_v: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableWidget(
                    color_v: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            height: bottomComtainerHeight,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

class ReusableWidget extends StatelessWidget {
  ReusableWidget({@required this.color_v});
  final Color color_v;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: color_v, borderRadius: BorderRadius.circular(10)),
    );
  }
}
