import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';


class LoginScreen extends StatelessWidget {
  final String title;

  const LoginScreen({
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: title,
      // TODO: 填我们自己的logo
      // logo: AssetImage('assets/images/ecorp-lightblue.png'),
      onLogin: _signin,
      onSignup: _signup,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardScreen(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
