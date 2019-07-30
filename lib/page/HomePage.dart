import 'package:flutter/material.dart';
import 'package:study_login_app2/page/LoginPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    Widget _buildVerticalLayout() {
      return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 55.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/banner.png', width: double.infinity),
                LoginPage()
              ]));
    }

    Widget _buildHorizontalLayout() {
      return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Image.asset('assets/images/banner.png'),
            ),
            Expanded(
                child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: LoginPage()))
          ]);
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: OrientationBuilder(builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? _buildVerticalLayout()
              : _buildHorizontalLayout();
        }));

  }
}
