import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ApparNameText extends StatelessWidget {
  const ApparNameText({super.key, this.fontSize = 30});

  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.purple,
      period: const Duration(seconds: 2),
      highlightColor: Colors.red,
      child: TitleText(
        label: 'Shop Smart',
        fontSize: fontSize,
      ),
    );
  }
}
