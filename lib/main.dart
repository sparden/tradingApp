import 'package:flutter/material.dart';
import 'package:tradingapp/loginScreen.dart';

import 'homeScreen.dart';
import 'orderScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trading App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LgnScreen(),
    );
  }
}

