import 'package:e_commerce_app/constants/app_constants.dart';
import 'package:e_commerce_app/providers/theme_provider.dart';
import 'package:e_commerce_app/screens/inner_screen/viewed_recently.dart';
import 'package:e_commerce_app/screens/inner_screen/whish_list.dart';
import 'package:e_commerce_app/services/alret_dialog_methods.dart';
import 'package:e_commerce_app/services/assets_manager.dart';
import 'package:e_commerce_app/widgets/appar_name_text.dart';
import 'package:e_commerce_app/widgets/custom_list_tile.dart';
import 'package:e_commerce_app/widgets/subtitletext.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const ApparNameText(fontSize: 25),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AssetsManager.shoppingCart,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Visibility(
              visible: false,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: TitleText(label: 'Please login to have ultimate access'),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.blueAccent.shade200,
                          width: 3), // Outer border
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            AppConstants.productImageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleText(label: 'Khaled Tarek'),
                      SubTitleText(label: 'tkhaled238@gmail.com')
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleText(label: 'General'),
                  CustomListTile(
                      image: AssetsManager.orderSvg, lable: 'All orders'),
                  CustomListTile(
                      image: AssetsManager.wishlistSvg,
                      lable: 'WishList',
                      onTap: () async => await Navigator.pushNamed(
                          context, WhishListScreen.routName)),
                  CustomListTile(
                      image: AssetsManager.recent,
                      lable: 'Viewed recent',
                      onTap: () async => await Navigator.pushNamed(
                          context, ViewedRecentlyScreen.routName)),
                  CustomListTile(
                      image: AssetsManager.address, lable: 'Address'),
                  const Divider(thickness: 1),
                  const SizedBox(height: 10),
                  const TitleText(label: 'Settings'),
                  const SizedBox(height: 10),
                  SwitchListTile(
                    secondary: Image.asset(AssetsManager.theme, height: 30),
                    title: Text(themeProvider.getIsDarkTheme
                        ? 'Dark Theme'
                        : 'Light Theme'),
                    value: themeProvider.getIsDarkTheme,
                    onChanged: (value) {
                      themeProvider.setDarkTheme(themeValue: value);
                    },
                  ),
                  const Divider(thickness: 1),
                  const SizedBox(height: 10),
                  const TitleText(label: 'Others'),
                  const SizedBox(height: 10),
                  CustomListTile(
                      image: AssetsManager.privacy, lable: 'Privacy & Policy'),
                ],
              ),
            ),
            Center(
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(10),
                    side: const BorderSide(color: Colors.red),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                icon: const Icon(IconlyBold.logout),
                label: const Text('Logout'),
                onPressed: () async {
                  AlretDialogMethods.showErrorOrWarrnigDialog(
                      context: context,
                      subTilte: 'Logout ?',
                      onPressed: () {},
                      isError: true);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
