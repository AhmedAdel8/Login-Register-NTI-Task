import 'package:flutter/material.dart';
import 'package:nti_flutter21/src/core/model/register_login_model.dart';
import 'package:nti_flutter21/src/core/widgets/border_text_field.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.registerandloginModel,
  });
  final RegisterandLoginModel registerandloginModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          keyboardType: registerandloginModel.inputType,
          obscureText: registerandloginModel.obscureText,
          validator: registerandloginModel.validator,
          controller: registerandloginModel.mycontroller,
          decoration: InputDecoration(
            label: Text(""),
            suffixIcon: registerandloginModel.suffixIcon,
            prefixIcon: registerandloginModel.prefixIcon,
            hintText: registerandloginModel.hinttext,
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
