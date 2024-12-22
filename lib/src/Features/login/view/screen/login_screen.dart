import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nti_flutter21/src/Features/login/view/widgets/custom_row.dart';
import 'package:nti_flutter21/src/core/style/size_app.dart';
import 'package:nti_flutter21/src/core/style/widgets/custom_text_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  bool secourtext = true;

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

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
                    "Log in",
                    style:
                        TextStyle(fontSize: SizeApp.s33, fontFamily: "myfont"),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SvgPicture.asset(
                    "assets/images/login.svg",
                    width: 288,
                  ),
                  SizedBox(
                    height: 20,
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
                    height: 23,
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
                        Navigator.of(context).pushReplacementNamed('login');
                      } else {
                        print('Not valid');
                      }
                    },
                    height: 55,
                    color: Colors.purple[800],
                    child: Text(
                      "log in",
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
                  CustomRowLogin(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
