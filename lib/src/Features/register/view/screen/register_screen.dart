import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_flutter21/src/Features/register/view/widgets/custom_row.dart';
import 'package:nti_flutter21/src/core/style/size_app.dart';
import 'package:nti_flutter21/src/core/widgets/custom_text_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController nationalid = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  bool secourtext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBarName(),
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: ListView(
          children: [
            Form(
              key: formstate,
              child: Column(
                children: [
                  Text(
                    "Sign up",
                    style:
                        TextStyle(fontSize: SizeApp.s33, fontFamily: "myfont"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SvgPicture.asset(
                    "assets/images/signup.svg",
                    width: 300,
                    height: 185,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextForm(
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person, color: Colors.purple[800]),
                    ),
                    hinttext: 'Enter Your username',
                    mycontroller: username,
                    validator: (val) {
                      if (val == null || val.length < 3) {
                        return "Name must be at least 3 characters long";
                      }
                      return null;
                    },
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextForm(
                    inputType: TextInputType.number,
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.card_membership,
                          color: Colors.purple[800]),
                    ),
                    hinttext: 'Enter Your National Id',
                    mycontroller: nationalid,
                    validator: (val) {
                      if (val == null || val.length != 14) {
                        return "The national number must consist of 14 digits";
                      }
                      return null;
                    },
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextForm(
                    inputType: TextInputType.phone,
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.phone, color: Colors.purple[800]),
                    ),
                    hinttext: 'Enter your phone number',
                    mycontroller: phonenumber,
                    validator: (val) {
                      if (val == null || val.length != 11) {
                        return "Phone number must be 11 digits long";
                      }
                      return null;
                    },
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextForm(
                    inputType: TextInputType.emailAddress,
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.email,
                        color: Colors.purple[800],
                      ),
                    ),
                    hinttext: 'Enter Your Email',
                    mycontroller: email,
                    validator: (val) {
                      if (val == null ||
                          !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(val)) {
                        return "Invalid email";
                      }
                      return null;
                    },
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextForm(
                    obscureText: secourtext,
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.lock,
                        color: Colors.purple[800],
                      ),
                    ),
                    hinttext: "Enter Password ",
                    mycontroller: password,
                    validator: (val) {
                      if (val == null || val.length < 8) {
                        return "Password must be at least 8 characters long";
                      }
                      return null;
                    },
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          secourtext = !secourtext;
                        });
                      },
                      icon: Icon(
                          secourtext ? Icons.visibility_off : Icons.visibility),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27)),
                    onPressed: () {
                      if (formstate.currentState!.validate()) {
                        Navigator.of(context).pushReplacementNamed('signup');
                      } else {
                        print('Not valid');
                      }
                    },
                    height: 55,
                    color: Colors.purple[800],
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontFamily: "myfont",
                        fontSize: SizeApp.s22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  CustomRowRegister(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
