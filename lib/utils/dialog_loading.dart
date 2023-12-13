
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/appImages.dart';

class LoadingDialog {
  LoadingDialog._();

  static showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return WillPopScope(
            onWillPop: () async => false,
            child: Center(
              child: SizedBox(
                  height: 100,
                  child: Lottie.asset(
                    Animations.loading,
                  )),
            ));
      },
    );
  }

  static hideDialog(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }
}
