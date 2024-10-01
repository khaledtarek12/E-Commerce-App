import 'package:e_commerce_app/widgets/subtitletext.dart';
import 'package:flutter/material.dart';

class CtgRoundedWidget extends StatelessWidget {
  const CtgRoundedWidget({
    super.key,
    required this.imagePathe,
    required this.label,
  });

  final String imagePathe, label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePathe,
          height: 50,
          width: 50,
        ),
        const SizedBox(height: 15),
        SubTitleText(
          label: label,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
