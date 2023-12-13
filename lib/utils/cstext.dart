import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color ? textColor;
  final double ? fontSize;
  final FontWeight ? weight;
  final bool ? isTextcenter;
  final bool ? isTextUnderline;

  const CustomTextWidget({Key? key, required this.text,
    this.textStyle,this.textColor,
    this.fontSize,this.weight,this.isTextcenter,this.isTextUnderline}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle finalTextStyle = textStyle ?? const TextStyle();
    final Color? finalColor = textStyle != null && textStyle!.color != null
        ? textStyle!.color
        : Theme.of(context).primaryColor;

    return Text(
      text,
      textAlign: (isTextcenter ?? false) ? TextAlign.center : null,
      // it accepts in the style with an opacity of 0.7.
      style: GoogleFonts.montserrat(
        decoration: (isTextUnderline ?? false) ? TextDecoration.underline : null,
        textStyle:  TextStyle(color: textColor ?? Colors.black, fontSize: fontSize ?? 16,fontWeight: weight ?? FontWeight.w500),
      ),
    );
  }
}