import 'package:flutter/material.dart';
import 'package:study_login_app2/theme/MyThemes.dart';
import 'package:study_login_app2/theme/ThemeModel.dart';

class _CustomTheme extends InheritedWidget {
  final CustomThemeState data;

  _CustomTheme({
    this.data,
    Key key,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
}

class CustomTheme extends StatefulWidget {
  final Widget child;
  final MyThemeKeys initialThemeKey;

  const CustomTheme({Key key, this.initialThemeKey, this.child})
      : super(key: key);

  @override
  CustomThemeState createState() => CustomThemeState();
}

class CustomThemeState extends State<CustomTheme> {
  ThemeModel _model;

  ThemeModel get theme => _model;

  @override
  void initState() {
    _model = MyThemes.getThemeFromKey(widget.initialThemeKey);
    super.initState();
  }

  void changeTheme(MyThemeKeys themeKey) {
    setState(() {
      _model = MyThemes.getThemeFromKey(themeKey);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
