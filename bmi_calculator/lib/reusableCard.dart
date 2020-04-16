import 'package:flutter/cupertino.dart';

class ReusableWidget extends StatelessWidget {
  ReusableWidget({@required this.color_v, this.cardChild});
  final Color color_v;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color_v,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}
