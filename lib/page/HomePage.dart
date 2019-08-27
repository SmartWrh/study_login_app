import 'package:flutter/material.dart';
import 'package:study_login_app2/page/LoginPage.dart';
import 'package:study_login_app2/theme/CustomTheme.dart';
import 'package:study_login_app2/widget/LoginImage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildVerticalLayout() {
      return SingleChildScrollView(
//          padding: const EdgeInsets.symmetric(horizontal: 55.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[LoginImage(), LoginPage()]));
    }

    Color color = CustomTheme.of(context).backgroundColor;

    return Scaffold(
        backgroundColor: color, body: _buildVerticalLayout());
  }
}
