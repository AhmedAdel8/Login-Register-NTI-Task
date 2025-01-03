import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nti_flutter21/src/Features/login/view/widgets/custom_row.dart';
import 'package:nti_flutter21/src/core/model/controller_model.dart';
import 'package:nti_flutter21/src/core/model/register_login_model.dart';
import 'package:nti_flutter21/src/core/style/size_app.dart';
import 'package:nti_flutter21/src/core/widgets/custom_text_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Form(
          key: formstate,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Text(
                  textAlign: TextAlign.center,
                  "Log in",
                  style: TextStyle(
                    fontSize: SizeApp.s33,
                    fontFamily: "myfont",
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 35,
                ),
              ),
              SliverToBoxAdapter(
                child: SvgPicture.asset(
                  "assets/images/login.svg",
                  width: 288,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: login.length,
                  itemBuilder: (context, index) {
                    return CustomTextForm(registerandloginModel: login[index]);
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 17,
                ),
              ),
              SliverToBoxAdapter(
                child: MaterialButton(
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27)),
                  onPressed: () {
                    if (formstate.currentState!.validate()) {
                      Navigator.of(context).pushReplacementNamed('info');
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
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 13,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomRowLogin(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
