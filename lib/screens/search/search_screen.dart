import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:e_commerce_app/services/assets_manager.dart';
import 'package:e_commerce_app/widgets/product/product_widget.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

late TextEditingController controller;

class _SearchScreenState extends State<SearchScreen> {
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const TitleText(lable: 'Search'),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              AssetsManager.shoppingCart,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 15),
              Focus(
                onFocusChange: (hasFocus) {
                  setState(() {}); // Rebuild to update icon color
                },
                child: TextField(
                  controller: controller,
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(
                      IconlyLight.search,
                      color: focusNode.hasFocus
                          ? Colors.blue
                          : Colors.grey, // Change color based on focus
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.clear();
                          FocusScope.of(context).unfocus();
                        });
                      },
                      child: const Icon(
                        Icons.clear,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: DynamicHeightGridView(
                    builder: (context, index) {
                      return const ProductWidget();
                    },
                    itemCount: 50,
                    crossAxisCount: 2),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
