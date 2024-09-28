import 'package:e_commerce_app/constants/app_constants.dart';
import 'package:e_commerce_app/screens/cart/quantity_bottom_sheet.dart';
import 'package:e_commerce_app/utils/heart_button.dart';
import 'package:e_commerce_app/widgets/subtitletext.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return FittedBox(
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FancyShimmerImage(
                  imageUrl: AppConstants.productImageUrl,
                  height: size.height * .2,
                  width: size.height * .2,
                ),
              ),
              const SizedBox(width: 10),
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * .6,
                          child: TitleText(
                            lable: 'Title' * 10,
                            maxLines: 2,
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  IconlyBroken.delete,
                                  color: Colors.red,
                                )),
                            const HeartButtonWidget(),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SubTitleText(
                          lable: '16\$',
                          fontSize: 20,
                          color: Colors.blue,
                        ),
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () async {
                            await showModalBottomSheet(
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(32),
                                      topRight: Radius.circular(32))),
                              context: context,
                              builder: (context) => const QuantityBottomSheet(),
                            );
                          },
                          label: const Text('Qty: 6 '),
                          icon: const Icon(IconlyLight.arrowDown2),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
