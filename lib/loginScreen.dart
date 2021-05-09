import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:tradingapp/homeScreen.dart';

class LgnScreen extends StatefulWidget {

  @override
  _LgnScreenState createState() => _LgnScreenState();
}

class _LgnScreenState extends State<LgnScreen> {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
        onSignup: (val) {print(val);},
      // ignore: missing_return
        onLogin: (val) {Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));},
        onRecoverPassword: (val) {print(val);},
      title: 'Trading App',
    );
  }
}
