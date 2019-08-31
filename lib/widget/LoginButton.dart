import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:study_login_app2/theme/CustomTheme.dart';
import 'package:study_login_app2/theme/MyThemes.dart';

class LoginButton extends StatelessWidget {
  final Text child;

  LoginButton({this.child});

  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = CustomTheme.of(context).isDark;

    var decoration = BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(27.0)),
        gradient:
            LinearGradient(colors: [Color(0xff2796F9), Color(0xff6565D3)]));

    var darkDecoration = BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(27.0)),
        color: Color(0xffFDC500));

    return GestureDetector(
        child: Container(
            width: double.infinity,
            height: 54.0,
            alignment: Alignment.center,
            child: child,
            decoration: isDark ? darkDecoration : decoration),
        onTap: () {
          _changeTheme(context, isDark ? MyThemeKeys.LIGHT : MyThemeKeys.DARK);
        });
  }
}
