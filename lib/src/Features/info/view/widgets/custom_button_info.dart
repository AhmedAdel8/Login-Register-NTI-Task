import 'package:flutter/material.dart';
import 'package:nti_flutter21/src/Features/details/view/screen/details_screen.dart';
import 'package:nti_flutter21/src/core/model/controller_model.dart';
import 'package:nti_flutter21/src/core/style/size_app.dart';

class CustomButtonInfo extends StatelessWidget {
  const CustomButtonInfo({
    super.key,
    required this.formstate,
  });

  final GlobalKey<FormState> formstate;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(27)),
      onPressed: () {
        if (formstate.currentState!.validate()) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailsScreen(
                na: name.text, da: calcYears(date.text).toString());
          }));
        } else {
          print('Not valid');
        }
      },
      height: 55,
      color: Colors.purple[800],
      child: Text(
        "Info Details",
        style: TextStyle(
          fontFamily: "myfont",
          fontSize: SizeApp.s22,
          color: Colors.white,
        ),
      ),
    );
  }
}

int calcYears(String date) {
  try {
    DateTime birthDate = DateTime.parse(date);
    DateTime currentDate = DateTime.now();
    Duration difference = currentDate.difference(birthDate);
    return (difference.inDays / 365).floor();
  } catch (e) {
    return 0;
  }
}
