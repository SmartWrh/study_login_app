import 'package:flutter/material.dart';
import 'package:study_login_app2/page/LoginPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 55.0),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/banner.png', height: 315.0),
                  LoginPage()
                ]),
          ),
        ));
  }
}
