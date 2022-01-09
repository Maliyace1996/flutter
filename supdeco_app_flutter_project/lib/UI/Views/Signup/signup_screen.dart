import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Signup/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/Signup";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
