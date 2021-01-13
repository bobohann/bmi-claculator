import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.title, @required this.onPressed});
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: bottomContainerBgColor,
          borderRadius: BorderRadius.circular(5.0),
        ),
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: 80.0,
        child: Center(
          child: Text(
            '$title',
            style: largeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
