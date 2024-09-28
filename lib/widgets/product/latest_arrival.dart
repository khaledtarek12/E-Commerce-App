import 'package:e_commerce_app/constants/app_constants.dart';
import 'package:e_commerce_app/screens/inner_screen/product_details.dart';
import 'package:e_commerce_app/utils/heart_button.dart';
import 'package:e_commerce_app/widgets/subtitletext.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class LatestArrivalWidget extends StatelessWidget {
  const LatestArrivalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () async {
          await Navigator.pushNamed(
              context, ProductDetailsScreens.productRoute);
        },
        child: SizedBox(
          width: size.width * .5,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: FancyShimmerImage(
                    imageUrl: AppConstants.productImageUrl,
                    width: size.width * .28,
                    height: size.width * .28,
                  ),
                ),
              ),
              const SizedBox(width: 7),
              Flexible(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(
                    lable: 'Title' * 10,
                    maxLines: 2,
                    fontSize: 18,
                  ),
                  FittedBox(
                    child: Row(
                      children: [
                        const HeartButtonWidget(size: 18),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add_shopping_cart_rounded,
                                size: 18)),
                      ],
                    ),
                  ),
                  const FittedBox(
                      child: SubTitleText(
                    lable: '16.66\$',
                  ))
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
