import 'package:flutter/material.dart';

class LoginImage extends StatelessWidget {
  double padding;

  LoginImage({this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 0),
      child: Image.asset('assets/images/banner.png'),
    );
  }
}
