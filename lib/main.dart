import 'package:flutter/material.dart';
import 'package:nti_flutter21/src/Features/login/view/screen/login_screen.dart';
import 'package:nti_flutter21/src/Features/register/view/screen/register_screen.dart';

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
      home: LoginScreen(),
      routes: {
        'signup': (context) => const RegisterScreen(),
        'login': (context) => const LoginScreen(),
      },
    );
  }
}
