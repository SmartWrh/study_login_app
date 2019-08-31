import 'package:flutter/material.dart';
import 'package:study_login_app2/theme/ThemeModel.dart';

enum MyThemeKeys { LIGHT, DARK }

class MyThemes {
  static final ThemeModel lightTheme = ThemeModel(
      imageUrl: 'assets/images/banner.png',
      backgroundColor: Color(0xffffffff),
      titleColor: Color(0xff3C4859),
      borderColor: Colors.black.withOpacity(0.3),
      isDark: false);

  static final ThemeModel darkTheme = ThemeModel(
      imageUrl: 'assets/images/banner_dark.png',
      backgroundColor: Color(0xff2B1C71),
      titleColor: Color(0xffffffff),
      borderColor: Colors.white.withOpacity(0.3),
      isDark: true);

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
