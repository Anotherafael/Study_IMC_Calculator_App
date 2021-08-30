import 'package:flutter/material.dart';
import 'package:imc_calculator/app/app_theme.dart';
import 'package:imc_calculator/app/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      home: const SplashPage(),
    );
  }
}
