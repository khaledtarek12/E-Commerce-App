import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:e_commerce_app/services/assets_manager.dart';
import 'package:e_commerce_app/widgets/empty_pag.dart';
import 'package:e_commerce_app/widgets/product/product_widget.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class WhishListScreen extends StatelessWidget {
  const WhishListScreen({super.key});

  static const wishRoute = '/WhishListScreen';

  final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? EmptyPagWidget(
            imagePath: AssetsManager.shoppingBasket,
            title: 'Your WhisList is empty',
            subTitle:
                'Looks like you don\'t add any thing yet to your cart \ngo ahead and start shooping',
            buttonText: 'Shop Now')
        : Scaffold(
            appBar: AppBar(
              title: const TitleText(lable: 'WhishList (5)'),
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
              padding: const EdgeInsets.all(16),
              child: DynamicHeightGridView(
                  mainAxisSpacing: 20,
                  builder: (context, index) {
                    return const ProductWidget();
                  },
                  itemCount: 50,
                  crossAxisCount: 2),
            ),
          );
  }
}
