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
              title: const TitleText(lable: 'Cart (5)'),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AssetsManager.shoppingCart,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 74, 227, 238),
                      elevation: 0,
                      onPressed: () {},
                      child: const Icon(IconlyBold.delete)),
                ),
              ],
            ),
            body: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return const CartWidget();
              },
            ),
          );
  }
}
