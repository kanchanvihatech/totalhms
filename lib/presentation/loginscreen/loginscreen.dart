import 'package:flutter/material.dart';
import 'package:totalhms/constants/appImages.dart';
import 'package:totalhms/presentation/loginscreen/widget/loginWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("$appImagesBase${AppImages.loginBackground}"))
        ),
        child: const LoginWidget(),
      ),
    );
  }
}

