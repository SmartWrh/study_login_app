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
    var decoration = BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(27.0)),
        gradient:
            LinearGradient(colors: [Color(0xff2796F9), Color(0xff6565D3)]));

    bool isDark = CustomTheme.of(context).isDark;

    return InkWell(
        child: Container(
            width: double.infinity,
            height: 54.0,
            alignment: Alignment.center,
            child: child,
            decoration: decoration),
        onTap: () {
          print('onTap${isDark}');
          _changeTheme(context,  MyThemeKeys.DARK);
        });
  }
}
