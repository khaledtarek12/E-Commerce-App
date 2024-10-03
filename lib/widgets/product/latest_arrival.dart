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
      padding: const EdgeInsets.all(10.0), // Slightly more padding for spacing
      child: GestureDetector(
        onTap: () async {
          await Navigator.pushNamed(context, ProductDetailsScreens.routName);
        },
        child: Container(
          padding:
              const EdgeInsets.all(15.0), // More padding inside the container
          decoration: BoxDecoration(
            color: Colors.blueGrey, // Clean white background
            borderRadius: BorderRadius.circular(20), // Softer corners
            boxShadow: [
              BoxShadow(
                color: Colors.grey
                    .withOpacity(0.15), // Slightly more shadow for depth
                blurRadius: 15, // Softer shadow blur
                offset:
                    const Offset(0, 10), // Positioned lower for better effect
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Section
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  width: size.width * 0.3, // Set width to something finite
                  child: FancyShimmerImage(
                    imageUrl: AppConstants.productImageUrl,
                    boxFit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                  width: 12), // Add some space between image and text
              // Title Section
              FittedBox(
                child: Column(
                  children: [
                    SizedBox(
                      width: size.width * .3,
                      child: const TitleText(
                        label: 'Amazing Product Title',
                        maxLines: 2,
                        fontSize: 18,
                        color: Colors.white, // Use a darker color for the text
                      ),
                    ),
                    const SizedBox(height: 6), // Space between title and price
                    // Price Section
                    Column(
                      children: [
                        Row(
                          children: [
                            // Heart Button
                            HeartButtonWidget(
                                size: 24,
                                color: Colors.deepOrange.withOpacity(0.1)),
                            const SizedBox(width: 10), // Space between buttons
                            // Cart Button
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.deepOrange.withOpacity(
                                    0.1), // Light background for the button
                                borderRadius:
                                    BorderRadius.circular(8), // Rounded button
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add_shopping_cart_rounded,
                                  size: 24,
                                  color: Colors
                                      .white, // Same color as price for consistency
                                ),
                              ),
                            ),
                          ],
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(height: 15),
                        const SubTitleText(
                          label: '16.66\$',
                          fontSize: 20,

                          color: Colors
                              .white, // Use a contrasting color for the price
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
