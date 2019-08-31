import 'dart:ui';

class ThemeModel {
  String imageUrl;
  Color backgroundColor;
  Color titleColor;
  Color borderColor;
  bool isDark;

  ThemeModel({
    this.imageUrl,
    this.backgroundColor,
    this.titleColor,
    this.borderColor,
    this.isDark = false,
  });
}
