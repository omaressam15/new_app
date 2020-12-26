import 'package:New_app/ui/HomePage.dart';
import 'package:New_app/ui/LoginPage.dart';
import 'package:New_app/ui/ReceivingCodeForMobile.dart';
import 'package:New_app/ui/RegistrationPage.dart';
import 'package:New_app/ui/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:LoginPage(),
    );
  }
}