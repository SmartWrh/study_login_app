import 'package:flutter/material.dart';
import 'package:study_login_app2/theme/CustomTheme.dart';
import 'package:study_login_app2/widget/LoginButton.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark = CustomTheme.of(context).isDark;

    TextStyle style = new TextStyle(
        color: CustomTheme.of(context).titleColor,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold);

    TextStyle labelStyle = TextStyle(
        fontSize: 13.0,
        color: Color(isDark ? 0xffffffff : 0xff3C4859).withOpacity(0.3),
        fontWeight: isDark ? FontWeight.normal : FontWeight.bold);

    TextField getTextField(String label) {
      InputBorder border = UnderlineInputBorder(
          borderSide: BorderSide(
              width: 0.5, color: CustomTheme.of(context).borderColor));

      return TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              labelText: label, labelStyle: labelStyle, enabledBorder: border));
    }

    return Container(
        padding: const EdgeInsets.only(bottom: 37.0),
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Hello', style: style.copyWith(fontSize: 34.0)),
              Text('Create an account to continue',
                  style: style.copyWith(
                      color: style.color.withOpacity(0.5), fontSize: 13.0)),
              getTextField('Username'),
              SizedBox(height: 12.0),
              getTextField('Email Address'),
              SizedBox(height: 12.0),
              getTextField('Password'),
              SizedBox(height: 37.0),
              LoginButton(
                  child: Text('CREATE',
                      style:
                          style.copyWith(color: Colors.white, fontSize: 15.0))),
              SizedBox(height: 41.0),
              Row(
                  children: <Widget>[
                    Text('Already have an account?', style: labelStyle),
                    Text('Sign in', style: style.copyWith(fontSize: 13.0))
                  ],
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween)
            ]));
  }
}
