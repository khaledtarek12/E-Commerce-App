import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TitleText(lable: 'Search Screen'),
      ),
    );
  }
}
