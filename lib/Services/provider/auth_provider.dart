
import 'package:flutter/material.dart';

import '../../models/Password_set_model.dart';
import '../../models/password_reset.dart';
import '../../models/user_model.dart';
import '../../presentation/loginscreen/loginscreen.dart';
import '../../utils/custom_snackbar.dart';
import '../../utils/dialog_loading.dart';
import '../ApiService.dart';


class PostProvider extends ChangeNotifier {

  final ApiService apiService;
  PostProvider(this.apiService);

  UserModel _posts =UserModel();
  UserModel get posts => _posts;
  PasswordSetModel _forgotPassword = PasswordSetModel();

  PasswordSetModel get forgotPasswordList => _forgotPassword;

  Future<UserModel> loginUser(String? email, String? password, BuildContext context) async {
    LoadingDialog.showLoadingDialog(context);
    try {
      _posts = await apiService.loginUser(email, password, context);

      if(_posts.error==false){
        print("_posts...${_posts.errors}");
        showCustomSnackBar('Login Succesfully', context, isGreen: true);

      }else {
        showCustomSnackBar('Login failed', context, isGreen: false);

      }
      LoadingDialog.hideDialog(context);
      notifyListeners();
      return _posts;
    } catch (e) {

      LoadingDialog.hideDialog(context);
      print('loginUser Error: $e');
      return _posts;
    }
  }

  Future<PasswordSetModel> forgotPassword(String? email, BuildContext context) async {
    LoadingDialog.showLoadingDialog(context);
    try {
      _forgotPassword = await apiService.forgotPassword(email, context);
      if(_forgotPassword.data=="Password reset email sent."){
        showCustomSnackBar('Password reset email sent.', context, isGreen: true);
      }else {
        showCustomSnackBar('Login failed', context, isGreen: false);
      }
      LoadingDialog.hideDialog(context);
      notifyListeners();
    return _forgotPassword;
    } catch (e) {
      print('Error: $e');
      return _forgotPassword;
    }
  }
}

