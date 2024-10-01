import 'package:e_commerce_app/services/assets_manager.dart';
import 'package:e_commerce_app/widgets/subtitletext.dart';
import 'package:flutter/material.dart';

class AlretDialogMethods {
  static Future<void> showErrorOrWarrnigDialog(
      {required BuildContext context,
      required String subTilte,
      required Function onPressed,
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
                    onPressed: () {
                      onPressed;
                      Navigator.pop(context);
                    },
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
}
