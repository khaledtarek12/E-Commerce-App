import 'package:e_commerce_app/widgets/subtitletext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.image,
    required this.lable,
    this.onTap,
  });

  final String image;
  final String lable;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Image.asset(
        image,
        height: 30,
      ),
      title: SubTitleText(lable: '    $lable'),
      trailing: const Icon(IconlyLight.arrowRight2),
    );
  }
}
