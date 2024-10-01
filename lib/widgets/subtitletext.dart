import 'package:flutter/material.dart';

class SubTitleText extends StatelessWidget {
  const SubTitleText({
    super.key,
    this.fontWeight = FontWeight.normal,
    required this.label,
    this.color,
    this.textDecoration = TextDecoration.none,
    this.fontStyle = FontStyle.normal,
    this.fontSize = 18,
  });

  final FontWeight fontWeight;
  final String label;
  final Color? color;
  final TextDecoration textDecoration;
  final FontStyle fontStyle;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          color: color,
          decoration: textDecoration,
        ));
  }
}
