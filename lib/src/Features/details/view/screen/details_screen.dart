import 'package:flutter/material.dart';
import 'package:nti_flutter21/src/core/style/size_app.dart';
import 'package:nti_flutter21/src/core/widgets/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.na, required this.da});
  final String na;
  final String da;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarName(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Name: ${na} ",
              style: TextStyle(
                fontSize: SizeApp.s22,
              ),
            ),
          ),
          Text(
            "Date: ${da} ",
            style: TextStyle(
              fontSize: SizeApp.s22,
            ),
          ),
        ],
      ),
    );
  }
}
