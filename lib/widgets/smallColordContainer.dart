import 'package:flutter/material.dart';

class SmallColoredContainer extends StatelessWidget {
  const SmallColoredContainer({Key key, this.color, this.text, this.textColor, this.height, this.fontSize})
      : super(key: key);
  final String text;
  final Color color;
  final Color textColor;
  final double height;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: text.length > 10 ? text.length * 9.0 : 50,
      height: height,
      decoration: BoxDecoration(
        color: color ?? Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        text ?? 'null',
        style: TextStyle(color: textColor ?? Colors.black, fontSize: fontSize ?? 12),
      )),
    );
  }
}
