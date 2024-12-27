import 'package:flutter/material.dart';
import 'package:nti_flutter21/src/Features/info/view/widgets/custom_button_info.dart';
import 'package:nti_flutter21/src/core/model/controller_model.dart';
import 'package:nti_flutter21/src/core/model/register_login_model.dart';
import 'package:nti_flutter21/src/core/style/size_app.dart';
import 'package:nti_flutter21/src/core/widgets/custom_text_form.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    name.addListener(() {
      setState(() {});
    });
    date.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    name.dispose();
    date.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Form(
          key: formstate,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Text(
                  textAlign: TextAlign.center,
                  "Infromation",
                  style: TextStyle(
                    fontSize: SizeApp.s33,
                    fontFamily: "myfont",
                  ),
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
                  itemCount: info.length,
                  itemBuilder: (context, index) {
                    return CustomTextForm(registerandloginModel: info[index]);
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 15,
                ),
              ),
              SliverToBoxAdapter(
                child: Text(
                  'Name: ${name.text} ',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 5,
                ),
              ),
              SliverToBoxAdapter(
                child: Text(
                  'date: ${date.text}',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 15,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomButtonInfo(formstate: formstate),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
