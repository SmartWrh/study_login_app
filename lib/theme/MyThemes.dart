import 'package:flutter/material.dart';
import 'package:study_login_app2/theme/ThemeModel.dart';

enum MyThemeKeys { LIGHT, DARK }

class MyThemes {
  static final ThemeModel lightTheme =
      ThemeModel(imageUrl: 'assets/images/banner.png');

  static final ThemeModel darkTheme =
      ThemeModel(imageUrl: 'assets/images/banner_dark.png');

  static ThemeModel getThemeFromKey(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.LIGHT:
        return lightTheme;
      case MyThemeKeys.DARK:
        return darkTheme;
      default:
        return lightTheme;
    }
  }
}
