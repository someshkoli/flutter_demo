import 'package:flutter/material.dart';
import './designConstants.dart';

class CardChildIcon extends StatelessWidget {
  CardChildIcon({this.text, this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: lableTextStyle,
        )
      ],
    );
  }
}
