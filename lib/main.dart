import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/Login/login_screen.dart';
import 'package:login_app/src/utils/theme/theme.dart';

Future<void> main() async {
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: OAppTheme.lightTheme,
      darkTheme: OAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: LoginScreen(),
    );
  }
}
