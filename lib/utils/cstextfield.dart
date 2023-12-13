import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:totalhms/utils/sizes_helpers.dart';
import 'app_colors.dart';


class CsCommonTextFieldWidget extends StatefulWidget {
  const CsCommonTextFieldWidget(
      {super.key, this.titleText = '',
        this.titleTextAlign = TextAlign.center,
        this.isPassword,
        this.hintText,
        this.textController,
        this.prefixIcon,
        this.isMaxLines,
        this.isPrefixIcon,
        this.height,
        this.keyBoardType,
        this.validator,
        this.onFieldSubmitted,
        this.labelText
      });

  final String ? titleText;
  final TextAlign ? titleTextAlign;
  final bool ? isPassword;
  final String ? hintText;
  final TextEditingController  ? textController;
  final Widget ? prefixIcon;
  final bool ? isMaxLines;
  final bool ? isPrefixIcon;
  final double ? height;
  final TextInputType ? keyBoardType;
  final String? Function(String?)? validator;
  final Function(String)? onFieldSubmitted;
  final String ? labelText;

  @override
  _CsCommonTextFieldWidgetState createState() =>
      _CsCommonTextFieldWidgetState();
}

class _CsCommonTextFieldWidgetState extends State<CsCommonTextFieldWidget> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primary,
      cursorHeight: 23,
      onFieldSubmitted: widget.onFieldSubmitted,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.textController,
      keyboardType: widget.keyBoardType,
      maxLines: (widget.isMaxLines ?? false) ? null : 1,
      obscureText: isVisible,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: widget.labelText,
        labelStyle: GoogleFonts.montserrat(
          textStyle:  TextStyle(color: AppColors.primary, fontSize: 12,fontWeight: FontWeight.w400,),
        ),
        filled: true,
        fillColor: AppColors.appWhite,
        constraints: BoxConstraints(
          maxHeight: ((widget.isMaxLines ?? false) ? widget.height ?? displayHeight(context) * 0.12 : widget.height ?? displayHeight(context) * 0.08) ?? 0.0,
          // minHeight: ((widget.isMaxLines ?? false) ? null : widget.height ?? displayHeight(context) * 0.08) ?? 0.0,
        ),
        prefixIconConstraints: (widget.isPrefixIcon ?? false) ? const BoxConstraints(
            minHeight: 25,
            minWidth: 50
        ) : null,
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(06),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(06),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(06),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(06),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(06),
        ),
        // prefixIcon: (widget.isPrefixIcon ?? false) ?  Image.asset("${appImages}search_icon.png",height: 25,) : null,
        suffixIcon: (widget.isPassword ?? false) ?IconButton(
            onPressed: (){
              setState(() {
                isVisible = !isVisible;
              });
            }, icon: Icon(isVisible ? Icons.visibility_off_outlined : Icons.visibility_outlined,color: AppColors.greyText,)): const SizedBox(),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
            borderRadius: BorderRadius.circular(06),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        hintText: widget.hintText, // pass the hint text parameter here
        hintStyle: GoogleFonts.montserrat(
          textStyle:  TextStyle(color: AppColors.greyText, fontSize: 12,fontWeight: FontWeight.w400),
        ),
      ),
      style: GoogleFonts.montserrat(
        textStyle:  TextStyle(color: AppColors.greyText, fontSize: 12,fontWeight: FontWeight.w500),
      ),
    );
  }
}