import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:imc_calculator/core/presentation/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Color(0xFFFFFFFF),
      splash: Image.asset(
        "assets/images/ic_launcher.png",
        width: 300,
        height: 300,
      ),
      nextScreen: Home(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
