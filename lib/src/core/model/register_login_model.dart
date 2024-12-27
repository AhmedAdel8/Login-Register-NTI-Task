import 'package:flutter/material.dart';
import 'package:nti_flutter21/src/core/model/controller_model.dart';

class RegisterandLoginModel {
  bool secourtext = true;
  final String hinttext;
  final TextEditingController mycontroller;
  final String? Function(String?)? validator;
  final IconButton? suffixIcon;
  final IconButton? prefixIcon;
  final bool obscureText;
  final TextInputType? inputType;

  RegisterandLoginModel({
    required this.hinttext,
    required this.mycontroller,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    required this.obscureText,
    this.inputType,
  });
}

/////////////////////////////////////////////////////////////////////////
/// register ////
List<RegisterandLoginModel> register = [
  RegisterandLoginModel(
    mycontroller: username,
    prefixIcon: IconButton(
      onPressed: () {},
      icon: Icon(Icons.person, color: Colors.purple[800]),
    ),
    hinttext: 'Enter Your username',
    validator: (val) {
      if (val == null || val.length < 3) {
        return "Name must be at least 3 characters long";
      }
      return null;
    },
    obscureText: false,
  ),
  RegisterandLoginModel(
    mycontroller: nationalid,
    inputType: TextInputType.number,
    prefixIcon: IconButton(
      onPressed: () {},
      icon: Icon(Icons.card_membership, color: Colors.purple[800]),
    ),
    hinttext: 'Enter Your National Id',
    validator: (val) {
      if (val == null || val.length != 14) {
        return "The national number must consist of 14 digits";
      }
      return null;
    },
    obscureText: false,
  ),
  RegisterandLoginModel(
    mycontroller: phonenumber,
    inputType: TextInputType.phone,
    prefixIcon: IconButton(
      onPressed: () {},
      icon: Icon(Icons.phone, color: Colors.purple[800]),
    ),
    hinttext: 'Enter your phone number',
    validator: (val) {
      if (val == null || val.length != 11) {
        return "Phone number must be 11 digits long";
      }
      return null;
    },
    obscureText: false,
  ),
  RegisterandLoginModel(
    mycontroller: email,
    inputType: TextInputType.emailAddress,
    prefixIcon: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.email,
        color: Colors.purple[800],
      ),
    ),
    hinttext: 'Enter Your Email',
    validator: (val) {
      if (val == null || !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(val)) {
        return "Invalid email";
      }
      return null;
    },
    obscureText: false,
  ),
  RegisterandLoginModel(
    mycontroller: password,
    prefixIcon: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.lock,
        color: Colors.purple[800],
      ),
    ),
    hinttext: "Enter Password ",
    validator: (val) {
      if (val == null || val.length < 8) {
        return "Password must be at least 8 characters long";
      }
      return null;
    },
    suffixIcon: IconButton(
      onPressed: () {},
      icon: Icon(Icons.visibility_off),
    ),
    obscureText: true,
  ),
];
///////////////////////////////////////////////////////////////////////////////////
/// login  ////
List<RegisterandLoginModel> login = [
  RegisterandLoginModel(
    mycontroller: email,
    inputType: TextInputType.emailAddress,
    prefixIcon: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.email,
        color: Colors.purple[800],
      ),
    ),
    hinttext: 'Enter Your Email',
    validator: (val) {
      if (val == null || !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(val)) {
        return "Invalid email";
      }
      return null;
    },
    obscureText: false,
  ),
  RegisterandLoginModel(
    mycontroller: password,
    prefixIcon: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.lock,
        color: Colors.purple[800],
      ),
    ),
    hinttext: "Enter Password ",
    validator: (val) {
      if (val == null || val.length < 8) {
        return "Password must be at least 8 characters long";
      }
      return null;
    },
    suffixIcon: IconButton(
      onPressed: () {},
      icon: Icon(Icons.visibility_off),
    ),
    obscureText: true,
  ),
];
///////////////////////////////////////////////////////////////////////////
///  info  ///
List<RegisterandLoginModel> info = [
  RegisterandLoginModel(
    mycontroller: name,
    suffixIcon: IconButton(
        onPressed: () {
          name.clear();
        },
        icon: Icon(Icons.remove)),
    prefixIcon: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.person,
        color: Colors.purple[800],
      ),
    ),
    hinttext: 'Enter Your Name',
    validator: (val) {
      if (val == null || !RegExp(r'^[a-zA-Z\s]+$').hasMatch(val)) {
        return "Name is required and contain only letters and spaces";
      }
      return null;
    },
    obscureText: false,
  ),
  RegisterandLoginModel(
    mycontroller: date,
    prefixIcon: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.date_range,
        color: Colors.purple[800],
      ),
    ),
    hinttext: "Enter date ",
    validator: (val) {
      if (val == null || val.isEmpty) {
        return "please enter a date";
      }
      return null;
    },
    suffixIcon: IconButton(
      onPressed: () {
        date.clear();
      },
      icon: Icon(Icons.remove),
    ),
    obscureText: false,
  ),
];
