import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  IconContent({
    @required this.icon,
    @required this.label,
    @required this.contentColor,
    this.angle = 0,
  });

  final IconData icon;
  final String label;
  final double angle;
  final Color contentColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Transform.rotate(
          angle: angle,
          child: Icon(
            icon,
            size: 80.0,
            color: contentColor,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
