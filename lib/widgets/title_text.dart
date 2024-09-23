import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.lable,
    this.color,
    this.fontSize = 20,
    this.maxLines,
  });

  final String lable;
  final Color? color;
  final int? maxLines;

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(lable,
        maxLines: maxLines,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
          color: color,
        ));
  }
}
