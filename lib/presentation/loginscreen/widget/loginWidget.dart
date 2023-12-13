import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:totalhms/utils/app_colors.dart';
import 'package:totalhms/utils/csbutton.dart';
import 'package:totalhms/utils/cssizedbox.dart';
import 'package:totalhms/utils/cstext.dart';
import 'package:totalhms/utils/sizes_helpers.dart';

import '../../../Services/ApiService.dart';
import '../../../Services/api_endpoint.dart';
import '../../../Services/provider/auth_provider.dart';
import '../../../constants/appImages.dart';
import '../../../utils/cstextfield.dart';
import '../../../utils/dialog_loading.dart';
import '../../dashboard/dashboard.dart';
import '../../forgotpassword/forgotpasswordWidget.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  bool isChecked = true;
  final ApiService apiService = ApiService(ApiEndpoint.BASE_URL);
  @override
  Widget build(BuildContext context) {

    return Consumer<PostProvider>(
      builder: (context, postProvider, child) => Container(
          margin:
              EdgeInsets.symmetric(horizontal: displayWidth(context) * 0.05),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 10,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: displayWidth(context) * 0.05),
              decoration: BoxDecoration(
                  color: AppColors.appWhite,
                  borderRadius: BorderRadius.circular(10)),
              height: displayHeight(context) * 0.58,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    text: "Sign in to your account",
                    fontSize: 16,
                    textColor: AppColors.greyText,
                    weight: FontWeight.w500,
                  ),
                  const Box(
                    height: 0.02,
                  ),
                  CsCommonTextFieldWidget(
                    hintText: "Alexender@gmail.com",
                    labelText: "Email",
                    textController: txtEmail,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Please enter your email !";
                      } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(p0)) {
                        return "Please enter valid email !";
                      }
                      return null;
                    },
                  ),
                  const Box(
                    height: 0.03,
                  ),
                  CsCommonTextFieldWidget(
                    isPassword: true,
                    hintText: "Password",
                    labelText: "Password",
                    textController: txtPassword,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Please enter your password !";
                      } else if (p0.length < 6) {
                        return "Please enter 6 digits password !";
                      }
                      return null;
                    },
                  ),
                  const Box(
                    height: 0.02,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(
                          checkColor: AppColors.appWhite,
                          activeColor: AppColors.primary,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                            print(isChecked);
                          },
                        ),
                      ),
                      const Box(
                        width: 0.01,
                      ),
                      CustomTextWidget(
                        text: "Remember me",
                        fontSize: 12,
                        textColor: AppColors.greyText,
                        weight: FontWeight.w400,
                      ),
                      const Spacer(),
                      Image.asset(
                        "$appImagesBase${AppImages.lock}",
                        height: displayWidth(context) * 0.045,
                      ),
                      const Box(
                        width: 0.01,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ForgotPasswordWidget()),
                          );

                        },
                        child: CustomTextWidget(
                          text: "Forgot password?",
                          fontSize: 12,
                          textColor: AppColors.greyText,
                          weight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const Box(
                    height: 0.02,
                  ),
                  MyButton(
                      text: "Login",
                      onPressed: () async {
                        print("press button");
                        if(txtEmail.text!=""){
                          if(txtPassword.text!=""||txtPassword.text.length < 6) {
                            var success =  await postProvider.loginUser(txtEmail.text, txtPassword.text, context);
                            if(success.error==false){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Dashboard()),
                              );
                            }
                          }
                        }


                      }),
                  const Box(
                    height: 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      socialButton(
                          image: "$appImagesBase${AppImages.google}",
                          text: "Google"),
                      CustomTextWidget(
                        text: "Or",
                        fontSize: 14,
                        textColor: AppColors.greyText,
                        weight: FontWeight.w600,
                      ),
                      socialButton(
                          image: "$appImagesBase${AppImages.fb}",
                          text: "facebook")
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }

  Widget socialButton({text, image, onTap}) => InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          height: displayHeight(context) * (0.05),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular((05.0)),
              color: AppColors.primary.withOpacity(0.7)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                image,
                height: displayWidth(context) * 0.05,
              ),
              const Box(
                width: 0.02,
              ),
              Text(text,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: "spartan",
                        fontWeight: FontWeight.w600,
                        color: AppColors.appWhite),
                  ))
            ],
          ),
        ),
      );
}
