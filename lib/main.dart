import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:totalhms/presentation/loginscreen/loginscreen.dart';

import 'Services/ApiService.dart';
import 'Services/api_endpoint.dart';
import 'Services/provider/auth_provider.dart';
import 'di_container.dart' as di;
Future<void> main() async {
  await di.init();
  runApp(MultiProvider(providers: [

    ChangeNotifierProvider(create: (context) => di.sl<PostProvider>()),

  ], child: const MyApp()));
  //runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ApiService apiService = ApiService(ApiEndpoint.BASE_URL);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'total hms',
      theme: ThemeData(
          useMaterial3: true
      ),
      home:/* ChangeNotifierProvider(
        create: (context) => PostProvider(apiService),
        child: LoginScreen(),
      ),*/ const LoginScreen()
    );
  }
}