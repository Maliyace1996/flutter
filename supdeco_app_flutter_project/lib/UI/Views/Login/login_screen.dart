import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
