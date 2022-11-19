import 'package:flutter/material.dart';

class SmallColoredContainer extends StatelessWidget {
  const SmallColoredContainer({Key key, this.color, this.text, this.textColor, this.height, this.width})
      : super(key: key);
  final String text;
  final Color color;
  final Color textColor;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color ?? Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        text ?? 'null',
        style: TextStyle(color: textColor ?? Colors.black),
      )),
    );
  }
}
