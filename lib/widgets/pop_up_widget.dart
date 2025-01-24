import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopUpWidget {
  static Future<dynamic> acceptAndRejectPopUp({
    required BuildContext context,
    required String titleString,
    required String middleText,
    required String buttonText,
    required bool isSuccess,
    Function()? buttonOnPressed,
  }) {
    return Get.defaultDialog(
      backgroundColor: Colors.white,
      radius : 8,
      title: "",
      contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      content: SizedBox(
        width: 200,
        child: Column(
          children: [
            Icon(
              isSuccess
                  ? Icons.check
                  : Icons.cancel,
              size: 50,
            ),
            const SizedBox(height: 8),
            Text(
              titleString,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: Colors.black
              ),
            ),
            const SizedBox(height: 24),
            Text(
              middleText,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.grey
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black
                ),
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  'Submit',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}