import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:study_login_app2/page/HomePage.dart';
import 'package:study_login_app2/theme/CustomTheme.dart';
import 'package:study_login_app2/theme/MyThemes.dart';

void main() {
//  debugPaintSizeEnabled = true;
  runApp(CustomTheme(initialThemeKey: MyThemeKeys.LIGHT, child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
