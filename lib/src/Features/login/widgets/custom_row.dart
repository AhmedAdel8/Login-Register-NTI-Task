import 'package:flutter/material.dart';

class CustomRowLogin extends StatelessWidget {
  const CustomRowLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an Accout? ",
            style: TextStyle(
              fontSize: 16,
              color: Colors.purple[800],
            )),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "signup");
          },
          child: Text(
            " Sign up",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.purple[800]),
          ),
        ),
      ],
    );
  }
}
