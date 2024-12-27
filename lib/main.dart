import 'package:flutter/material.dart';
import 'package:nti_flutter21/src/Features/info/view/screen/info_screen.dart';
import 'package:nti_flutter21/src/Features/login/view/screen/login_screen.dart';
import 'package:nti_flutter21/src/Features/register/view/screen/register_screen.dart';
import 'package:nti_flutter21/src/Features/splash/view/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //iconTheme: const IconThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
            //fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: SplashScreen(),
      routes: {
        'splash': (context) => const SplashScreen(),
        'signup': (context) => const RegisterScreen(),
        'login': (context) => const LoginScreen(),
        'info': (context) => const InfoScreen(),
      },
    );
  }
}
