import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './icon_content.dart';
import './reusableCard.dart';
import './designConstants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool maleCardPressed = false;
  bool femaleCardPressed = false;
  int height = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardPressed = true;
                        femaleCardPressed = false;
                      });
                    },
                    child: ReusableWidget(
                      color_v: maleCardPressed
                          ? Color(pressedactiveCardColor)
                          : Color(activeCardColor),
                      cardChild: CardChildIcon(
                        icon: FontAwesomeIcons.male,
                        text: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardPressed = false;
                        femaleCardPressed = true;
                      });
                    },
                    child: ReusableWidget(
                      color_v: femaleCardPressed
                          ? Color(pressedactiveCardColor)
                          : Color(activeCardColor),
                      cardChild: CardChildIcon(
                        icon: FontAwesomeIcons.female,
                        text: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableWidget(
              color_v: Color(activeCardColor),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: lableTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'cm',
                        style: lableTextStyle
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12,),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 24),
                      thumbColor: Color(0XFFEB1555),
                      overlayColor: Color(0x28EB1555),
                      activeTrackColor: Colors.white
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100,
                      max: 250,
                      // activeColor: Colors.white,
                      inactiveColor: Color(0XFF8D8E98),
                      onChanged: (double newHeight) {
                        setState(() {
                          height = newHeight.toInt();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(
                    color_v: Color(activeCardColor),
                  ),
                ),
                Expanded(
                  child: ReusableWidget(
                    color_v: Color(activeCardColor),
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
