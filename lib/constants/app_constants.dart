import 'package:e_commerce_app/models/categroy_model.dart';
import 'package:e_commerce_app/services/assets_manager.dart';

class AppConstants {
  static const String productImageUrl =
      'https://img.lovepik.com/photo/48008/6386.jpg_wh860.jpg';
  static List<String> bannerImages = [
    AssetsManager.banner1,
    AssetsManager.banner2,
  ];
  static List<CategroyModel> categoriesImages = [
    CategroyModel(imagePath: AssetsManager.book, name: 'Books', id: ''),
    CategroyModel(
        imagePath: AssetsManager.cosmetics, name: 'Cosmetics', id: ''),
    CategroyModel(imagePath: AssetsManager.fashion, name: 'Fashion', id: ''),
    CategroyModel(imagePath: AssetsManager.mobiles, name: 'Mobiles', id: ''),
    CategroyModel(imagePath: AssetsManager.pc, name: 'PC', id: ''),
    CategroyModel(imagePath: AssetsManager.shoes, name: 'Shoes', id: ''),
    CategroyModel(imagePath: AssetsManager.watch, name: 'Watchs', id: ''),
    CategroyModel(
        imagePath: AssetsManager.electronics, name: 'Electronics', id: ''),
  ];
}
