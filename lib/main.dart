import 'package:e_commerce_app/constants/theme_data.dart';
import 'package:e_commerce_app/providers/theme_provider.dart';
import 'package:e_commerce_app/root_screen.dart';
import 'package:e_commerce_app/screens/inner_screen/product_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'E-Commerce App',
          theme: Styles.themeData(
              isDarkTheme: themeProvider.getIsDarkTheme, context: context),
          home: const RootScreen(),
          routes: {
            ProductDetailsScreens.productRoute: (context) =>
                const ProductDetailsScreens(),
          },
        );
      }),
    );
  }
}
