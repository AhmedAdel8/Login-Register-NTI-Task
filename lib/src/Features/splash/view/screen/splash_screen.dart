import 'package:flutter/material.dart';
import 'package:nti_flutter21/src/Features/splash/view/widgets/splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4d4f8),
      body: SplashScreenBody(),
    );
  }
}
