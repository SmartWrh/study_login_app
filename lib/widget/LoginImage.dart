import 'package:flutter/material.dart';
import 'package:study_login_app2/theme/CustomTheme.dart';
import 'package:study_login_app2/theme/MyThemes.dart';

class LoginImage extends StatelessWidget {
  double padding;

  LoginImage({this.padding});

  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  @override
  Widget build(BuildContext context) {
    String image = CustomTheme.of(context).imageUrl;

    return Transform.scale(
        child: Image.asset(image, width: double.infinity),
        scale: 1.25,
        alignment: Alignment.bottomRight);
  }
}
