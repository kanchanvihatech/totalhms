
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:totalhms/Services/provider/auth_provider.dart';

import 'Services/ApiService.dart';
import 'Services/api_endpoint.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final ApiService apiService = ApiService(ApiEndpoint.BASE_URL);
  // Provider
  sl.registerFactory(
      () => PostProvider(apiService));


}
