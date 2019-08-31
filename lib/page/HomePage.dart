import 'package:flutter/material.dart';
import 'package:study_login_app2/page/LoginPage.dart';
import 'package:study_login_app2/theme/CustomTheme.dart';
import 'package:study_login_app2/widget/AnimatedScaffold.dart';
import 'package:study_login_app2/widget/LoginImage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    print('initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
  }

  @override
  Widget build(BuildContext context) {
    Color color = CustomTheme.of(context).backgroundColor;
    return AnimatedScaffold(
        color: color,
        child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              LoginImage(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 55.0),
                  child: LoginPage())
            ])));
  }
}
