import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'splash/splash_page.dart';

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
