import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  MyButtons({this.color, this.textColor, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(5),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(color: textColor),
              ),
            ),
          )),
    );
  }
}
