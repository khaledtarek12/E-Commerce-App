import 'package:e_commerce_app/providers/theme_provider.dart';
import 'package:e_commerce_app/widgets/subtitletext.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SubTitleText(lable: "Hello World", fontSize: 30),
            ElevatedButton(onPressed: () {}, child: const Text("Hello World")),
            SwitchListTile(
              title: Text(
                  themeProvider.getIsDarkTheme ? 'Dark Theme' : 'Light Theme'),
              value: themeProvider.getIsDarkTheme,
              onChanged: (value) {
                themeProvider.setDarkTheme(themeValue: value);
              },
            )
          ],
        ),
      ),
    );
  }
}
