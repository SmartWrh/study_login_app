import 'package:flutter/material.dart';
import 'dart:ui';

class LoginButton extends StatelessWidget {
  final Text child;

  LoginButton({this.child});

  @override
  Widget build(BuildContext context) {
    var decoration = BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(27.0)),
        gradient:
            LinearGradient(colors: [Color(0xff2796F9), Color(0xff6565D3)]));

    return Container(
        width: double.infinity,
        height: 54.0,
        alignment: Alignment.center,
        child: child,
        decoration: decoration);
  }
}
