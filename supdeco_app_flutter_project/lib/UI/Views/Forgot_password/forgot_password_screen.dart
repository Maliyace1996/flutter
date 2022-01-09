import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Forgot_password/Components/body.dart';
import 'package:supdeco_app_flutter_project/custom_labels.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(textPasswordOublier_fr),
      ),
      body: Body(),
    );
  }
}
