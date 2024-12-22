import 'package:flutter/material.dart';

class CustomRowRegister extends StatelessWidget {
  const CustomRowRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an accout? ",
            style: TextStyle(
              fontSize: 16,
              color: Colors.purple[800],
            )),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "login");
          },
          child: Text(
            " Log in",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.purple[800]),
          ),
        ),
      ],
    );
  }
}
