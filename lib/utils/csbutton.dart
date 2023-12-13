import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';
import '../utils/sizes_helpers.dart';


class MyButton extends StatelessWidget {
  MyButton({
    Key? key,
    this.text,
    this.onPressed,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.buttonRadius,
    this.textColor,
    this.width,
    this.height,
    this.margin
  }) : super(key: key);

  final String ? text;
  final VoidCallback ? onPressed;
  final Color ? color ;
  final double ? fontSize;
  final FontWeight ? fontWeight;
  final double ? buttonRadius;
  final Color ? textColor;
  final double ?  width;
  final double ? height;
  final EdgeInsetsGeometry ? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: margin,
        alignment: Alignment.center,
        width: displayWidth(context) * (width ?? double.infinity),
        height: displayHeight(context) * (height ?? 0.05),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((buttonRadius ?? 05.0)),
            color: color  ?? AppColors.primary.withOpacity(0.7)),
        child: Text(text ?? "",
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: fontSize ?? 16,
                  fontFamily: "spartan",
                  fontWeight: fontWeight ?? FontWeight.w600,
                  color: textColor ?? AppColors.appWhite),
            )
        ),
      ),
    );
  }
}