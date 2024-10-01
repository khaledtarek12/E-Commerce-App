import 'package:e_commerce_app/services/assets_manager.dart';
import 'package:e_commerce_app/widgets/subtitletext.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class MyAppMethods {
  static Future<void> showErrorOrWarrnigDialog(
      {required BuildContext context,
      required String subTilte,
      required void Function()? onPressed,
      bool isError = true}) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                  !isError ? AssetsManager.warning : AssetsManager.error,
                  height: 60,
                  width: 60),
              const SizedBox(height: 20),
              SubTitleText(label: subTilte, fontWeight: FontWeight.bold),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: !isError
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: !isError,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Cancle',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: onPressed,
                    child: const Text(
                      'ok',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  static Future<void> imagePickerDialog({
    required BuildContext context,
    required Function camraFunction,
    required Function galleryFunction,
    required Function removeFunction,
  }) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: const Center(
            child: TitleText(label: 'Choose Option'),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                TextButton.icon(
                  onPressed: () {
                    camraFunction();
                    Navigator.canPop(context) ? Navigator.pop(context) : null;
                  },
                  label: const Text('Camer'),
                  icon: const Icon(Icons.camera),
                ),
                const SizedBox(height: 8),
                TextButton.icon(
                  onPressed: () {
                    galleryFunction();
                    Navigator.canPop(context) ? Navigator.pop(context) : null;
                  },
                  label: const Text('Gallery'),
                  icon: const Icon(Icons.image_rounded),
                ),
                const SizedBox(height: 8),
                TextButton.icon(
                  onPressed: () {
                    removeFunction();
                    Navigator.canPop(context) ? Navigator.pop(context) : null;
                  },
                  label: const Text('Remove'),
                  icon: const Icon(Icons.remove_circle_rounded),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
