import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:totalhms/constants/appImages.dart';
import 'package:totalhms/utils/app_colors.dart';
import 'package:totalhms/utils/csbutton.dart';
import 'package:totalhms/utils/cssizedbox.dart';
import 'package:totalhms/utils/cstext.dart';
import 'package:totalhms/utils/cstextfield.dart';
import 'package:totalhms/utils/sizes_helpers.dart';

import '../../Services/provider/auth_provider.dart';
import '../../models/Password_set_model.dart';
import '../../utils/custom_snackbar.dart';
import '../loginscreen/loginscreen.dart';
import '../loginscreen/widget/loginWidget.dart';

class ForgotPasswordWidget extends StatefulWidget {
  ForgotPasswordWidget({super.key});

  @override
  State<ForgotPasswordWidget> createState() => _ForgotPasswordWidgetState();
}

class _ForgotPasswordWidgetState extends State<ForgotPasswordWidget> {
  TextEditingController txtEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BuildContext mContext = context;
    return Consumer<PostProvider>(
        builder: (context, postProvider, child) => Container(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: displayWidth(context) * 0.05),
                  decoration: BoxDecoration(
                      color: AppColors.appWhite,
                      borderRadius: BorderRadius.circular(10)),
                  height: displayHeight(context) * 0.51,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Box(
                        height: 0.05,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "$appImagesBase${AppImages.totalhmsLogo}",
                            height: displayWidth(context) * 0.15,
                          )),
                      const Box(
                        height: 0.03,
                      ),
                      CustomTextWidget(
                        text: "RESET PASSWORD",
                        fontSize: 16,
                        textColor: AppColors.greyText,
                        weight: FontWeight.w600,
                      ),
                      const Box(
                        height: 0.015,
                      ),
                      CustomTextWidget(
                          text:
                              "Enter your email and instructions will be sent to you",
                          fontSize: 14,
                          textColor: AppColors.greyText.withOpacity(0.7),
                          weight: FontWeight.w500,
                          isTextcenter: true),
                      const Box(
                        height: 0.03,
                      ),
                      CsCommonTextFieldWidget(
                        hintText: "Alexender@gmail.com",
                        labelText: "Email",
                        textController: txtEmail,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return "Please enter your email !";
                          } else if (!RegExp(
                                  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(p0)) {
                            return "Please enter valid email !";
                          }
                          return null;
                        },
                      ),
                      const Box(
                        height: 0.03,
                      ),
                      MyButton(
                          text: "Send Password Reset link",
                          onPressed: () async {
                            var success = await postProvider.forgotPassword(txtEmail.text, mContext);

                            print(".....${success.data}");
                            if(success.data.toString()=="Password reset email sent."){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginWidget()),
                              );
                            }
                          }),
                      const Box(
                        height: 0.035,
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_back_ios_new_outlined,
                              color: AppColors.primary, size: 15),
                          const Box(
                            width: 0.01,
                          ),
                          CustomTextWidget(
                            text: "Back To Login",
                            fontSize: 14,
                            textColor: AppColors.greyText,
                            weight: FontWeight.w500,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
