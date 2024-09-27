import 'package:e_commerce_app/services/assets_manager.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
