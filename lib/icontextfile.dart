import 'package:bmi_pratic_for_london/constantfile.dart';
import 'package:flutter/material.dart';

class RepeatTextAndIcon extends StatelessWidget {
  RepeatTextAndIcon({@required this.iconData,this.label});
  final IconData iconData;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 100.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: klabelstyle,

        ),
      ],
    );
  }
}