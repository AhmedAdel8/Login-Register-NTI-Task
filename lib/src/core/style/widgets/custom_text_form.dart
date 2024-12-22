import 'package:flutter/material.dart';
import 'package:nti_flutter21/src/core/style/widgets/border_text_field.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.hinttext,
    required this.mycontroller,
    this.suffixIcon,
    required this.validator,
    required this.obscureText,
    this.prefixIcon,
    this.inputType,
  });

  final String hinttext;
  final TextEditingController mycontroller;
  final String? Function(String?)? validator;
  final IconButton? suffixIcon;
  final IconButton? prefixIcon;
  final bool obscureText;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          keyboardType: inputType,
          obscureText: obscureText,
          validator: validator,
          controller: mycontroller,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            hintText: hinttext,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            enabledBorder: border(color: const Color(0xffe4d4f8), radius: 50),
            focusedBorder: border(color: Colors.purple, radius: 50),
            fillColor: Color(0xffe4d4f8),
            filled: true,
          ),
        ),
      ],
    );
  }
}
