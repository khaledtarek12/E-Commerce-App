import 'package:e_commerce_app/constants/app_constants.dart';
import 'package:e_commerce_app/utils/heart_button.dart';
import 'package:e_commerce_app/widgets/appar_name_text.dart';
import 'package:e_commerce_app/widgets/subtitletext.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductDetailsScreens extends StatefulWidget {
  const ProductDetailsScreens({super.key});

  static const productRoute = '/ProductDetailsScreens';

  @override
  State<ProductDetailsScreens> createState() => _ProductDetailsScreensState();
}

class _ProductDetailsScreensState extends State<ProductDetailsScreens> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
        appBar: AppBar(
          title: const ApparNameText(fontSize: 20),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () =>
                  Navigator.canPop(context) ? Navigator.pop(context) : null,
              icon: const Icon(IconlyLight.arrowLeft2),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            FancyShimmerImage(
              imageUrl: AppConstants.productImageUrl,
              height: size.height * .38,
              width: double.infinity,
              boxFit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          child: Text(
                        'Title' * 10,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                      const SizedBox(width: 20),
                      const SubTitleText(
                        lable: '16.66\$',
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HeartButtonWidget(color: Colors.blue.shade300),
                        const SizedBox(width: 20),
                        Expanded(
                          child: SizedBox(
                            height: kBottomNavigationBarHeight - 10,
                            child: OutlinedButton.icon(
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.lightBlue,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.all(10),
                                  side:
                                      const BorderSide(color: Colors.lightBlue),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              icon: const Icon(Icons.add_shopping_cart),
                              label: const Text('Add to cart'),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TitleText(lable: 'About this Item'),
                      SubTitleText(lable: 'In Categroy')
                    ],
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 20),
                  SubTitleText(lable: 'description' * 15)
                ],
              ),
            ),
          ]),
        ));
  }
}
