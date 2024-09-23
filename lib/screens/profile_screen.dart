import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: const Center(
        child: TitleText(lable: 'Profile Screen'),
      ),
    );
  }
}
