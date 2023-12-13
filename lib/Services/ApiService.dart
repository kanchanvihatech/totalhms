import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



import '../models/Password_set_model.dart';
import '../models/password_reset.dart';
import '../models/user_model.dart';
import '../utils/custom_snackbar.dart';
import 'api_endpoint.dart';

class ApiService {
  final String apiUrl;

  ApiService(this.apiUrl);

  final Map<String, String> headers = {
    'Accept': 'application/json',
// Replace with your actual token
  };

  Future<UserModel> loginUser(String? email, String? password, BuildContext context) async {
    print("loginUsing.....${apiUrl+ApiEndpoint.loginUsing}");
    print("loginUsing.....${email.toString()+password.toString()}");
    final response = await http.post(Uri.parse(apiUrl+ApiEndpoint.loginUsing), headers: headers, body: {"email": email, "password": password});
    log("fetchPosts....${response.body.toString()}");

    if (response.statusCode == 200) {

      Map<String, dynamic> data = json.decode(response.body);
      return UserModel.fromJson(data);

    } else {
      showCustomSnackBar('Login failed', context, isGreen: false);
      throw Exception('Failed to load data');

    }
  }


  Future<PasswordSetModel> forgotPassword(String? email, BuildContext context) async {
    final response = await http.post(Uri.parse(apiUrl+ApiEndpoint.forgotPasswor),
        headers: headers, body: {"email": email});
    log("forgotPassword....${response.body.toString()}");
    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);

      return PasswordSetModel.fromJson(data);
    } else {
      showCustomSnackBar("Failed to load data", context, isGreen: false);
      throw Exception('Failed to load data');
    }
  }

}
