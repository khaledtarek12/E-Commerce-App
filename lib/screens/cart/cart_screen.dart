import 'package:e_commerce_app/screens/cart/button_checkout.dart';
import 'package:e_commerce_app/screens/cart/cart_widgt.dart';
import 'package:e_commerce_app/services/assets_manager.dart';
import 'package:e_commerce_app/widgets/empty_pag.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? EmptyPagWidget(
            imagePath: AssetsManager.shoppingBasket,
            title: 'Your Cart is empty',
            subTitle:
                'Looks like you don\'t add any thing yet to your cart \ngo ahead and start shooping',
            buttonText: 'Shop Now')
        : Scaffold(
            bottomSheet: const ButtonCheckoutWidget(),
            appBar: AppBar(
              title: const TitleText(label: 'Cart (5)'),
              leading: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Image.asset(
                  AssetsManager.wishlistSvg,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 74, 227, 238),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(IconlyBold.delete)),
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.only(
                  bottom: 100.0), // Add padding for the bottom sheet
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return const CartWidget();
                },
              ),
            ),
          );
  }
}
