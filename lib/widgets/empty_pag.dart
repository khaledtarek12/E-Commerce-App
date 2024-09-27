import 'package:e_commerce_app/widgets/subtitletext.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class EmptyPagWidget extends StatelessWidget {
  const EmptyPagWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subTitle,
      required this.buttonText});

  final String imagePath, title, subTitle, buttonText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: size.height * .35,
              width: double.infinity,
            ),
            const TitleText(
              lable: 'Whoops',
              fontSize: 40,
              color: Colors.red,
            ),
            const SizedBox(height: 20),
            SubTitleText(
              lable: title,
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: SubTitleText(
                lable: subTitle,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(20),
                    side: const BorderSide(color: Colors.blueGrey),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                icon: const Icon(IconlyBold.bag),
                label: Text(
                  buttonText,
                  style: const TextStyle(fontSize: 22),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    ));
  }
}
