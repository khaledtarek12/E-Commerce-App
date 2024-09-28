import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce_app/constants/app_constants.dart';
import 'package:e_commerce_app/services/assets_manager.dart';
import 'package:e_commerce_app/widgets/appar_name_text.dart';
import 'package:e_commerce_app/widgets/product/latest_arrival.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const ApparNameText(fontSize: 20),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              AssetsManager.shoppingCart,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.24,
                child: Swiper(
                  layout: SwiperLayout.TINDER,
                  itemWidth: MediaQuery.of(context).size.width,
                  itemHeight: 300.0,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      AppConstants.bannerImages[index],
                      fit: BoxFit.cover,
                    );
                  },
                  autoplay: true,
                  customLayoutOption:
                      CustomLayoutOption(startIndex: -1, stateCount: 3)
                        ..addRotate([-45.0 / 180, 0.0, 45.0 / 180])
                        ..addTranslate([
                          const Offset(-370.0, -40.0),
                          const Offset(0.0, 0.0),
                          const Offset(370.0, -40.0)
                        ]),
                  itemCount: AppConstants.bannerImages.length,
                  pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                        activeColor: Colors.red, color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const TitleText(
                lable: 'Latest arrival',
                fontSize: 22,
              ),
              const SizedBox(height: 18),
              SizedBox(
                height: size.height * .2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => const LatestArrivalWidget(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
