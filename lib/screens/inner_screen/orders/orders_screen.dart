import 'package:e_commerce_app/widgets/empty_pag.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../../services/assets_manager.dart';
import 'orders_widget.dart';

class OrdersScreenFree extends StatefulWidget {
  static const routName = '/OrderScreen';

  const OrdersScreenFree({super.key});

  @override
  State<OrdersScreenFree> createState() => _OrdersScreenFreeState();
}

class _OrdersScreenFreeState extends State<OrdersScreenFree> {
  bool isEmptyOrders = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () =>
                  Navigator.canPop(context) ? Navigator.pop(context) : null,
              icon: const Icon(IconlyLight.arrowLeft2),
            ),
          ),
          title: const TitleText(
            label: 'Placed orders',
          ),
        ),
        body: isEmptyOrders
            ? EmptyPagWidget(
                imagePath: AssetsManager.orderBag,
                title: "No orders has been placed yet",
                subTitle: "",
                buttonText: "Shop now")
            : ListView.separated(
                itemCount: 15,
                itemBuilder: (ctx, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2, vertical: 6),
                    child: OrdersWidgetFree(),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ));
  }
}
