import 'package:flutter/material.dart';
import 'package:study_login_app2/theme/CustomTheme.dart';
import 'package:study_login_app2/theme/MyThemes.dart';

class LoginImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String image = CustomTheme.of(context).imageUrl;
    bool isDark = CustomTheme.of(context).isDark;
    Widget child = isDark
        ? Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: Transform.scale(
                child: Image.asset(image, width: double.infinity),
                scale: 1.25,
                alignment: Alignment.bottomRight))
        : Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Image.asset(image));

    return child;
  }
}
