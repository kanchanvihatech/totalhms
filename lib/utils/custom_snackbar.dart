
import 'package:flutter/material.dart';


void showCustomSnackBar(String message, BuildContext context,
    {bool isGreen = false, int duration = 1000, bool bottomSheet = true}) {
  if (bottomSheet) {


    final snackBar = SnackBar(
      content: Align(child: Text(message), alignment: Alignment.center,),
      backgroundColor:isGreen ? Colors.green : Colors.red,
      behavior: SnackBarBehavior.floating,

    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

  } else {

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: isGreen ? Colors.green : Colors.red,
      content: Text(message),
      behavior: SnackBarBehavior.floating,
      duration: Duration(milliseconds: duration),
    ));
  }
}
