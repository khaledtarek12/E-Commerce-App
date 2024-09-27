import 'dart:developer';

import 'package:e_commerce_app/constants/app_constants.dart';
import 'package:e_commerce_app/widgets/subtitletext.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return GestureDetector(
      onTap: () {
        log('');
      },
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: FancyShimmerImage(
                imageUrl: AppConstants.productImageUrl,
                width: double.infinity,
                height: size.height * .22,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    flex: 5,
                    child: TitleText(
                      lable: 'Title' * 10,
                      maxLines: 2,
                    )),
                Flexible(
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(IconlyLight.heart)))
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(flex: 3, child: SubTitleText(lable: '16.66\$')),
                Flexible(
                  child: Material(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.lightBlue,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.add_shopping_cart_rounded, size: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
