import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_flutter21/src/core/model/register_login_model.dart';
import 'package:nti_flutter21/src/Features/register/view/widgets/custom_row.dart';
import 'package:nti_flutter21/src/core/style/size_app.dart';
import 'package:nti_flutter21/src/core/widgets/custom_text_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  bool secourtext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBarName(),
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Form(
          key: formstate,
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Text(
                  textAlign: TextAlign.center,
                  "Sign up",
                  style: TextStyle(fontSize: SizeApp.s33, fontFamily: "myfont"),
                ),
              ),
              SliverToBoxAdapter(
                child: SvgPicture.asset(
                  "assets/images/signup.svg",
                  width: 300,
                  height: 200,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),
              SliverToBoxAdapter(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 13,
                    );
                  },
                  itemCount: register.length,
                  itemBuilder: (context, index) {
                    return CustomTextForm(
                        registerandloginModel: register[index]);
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 15,
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
                    "Sign up",
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
                  height: 10,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomRowRegister(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
