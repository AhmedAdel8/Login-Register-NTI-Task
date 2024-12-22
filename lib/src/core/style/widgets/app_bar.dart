import 'package:flutter/material.dart';
import 'package:nti_flutter21/src/core/style/string_app.dart';
import 'package:nti_flutter21/src/core/style/text_style.dart';

AppBar appBarName() {
  return AppBar(
    centerTitle: true,
    title: Text(StringApp.appbartitle, style: textStyle()),
  );
}
