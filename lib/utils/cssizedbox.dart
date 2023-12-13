import 'package:flutter/material.dart';
import '../utils/sizes_helpers.dart';



class Box extends StatelessWidget {
  final Widget ?  myWidget;
  final double ? width;
  final double ? height;
  const Box({Key? key,this.myWidget,this.height,this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: displayWidth(context) * (width ?? 0.0),
      height: displayHeight(context) * (height ?? 0.0),
      child: myWidget,
    );
  }
}