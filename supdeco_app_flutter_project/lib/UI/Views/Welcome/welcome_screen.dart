import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/Welcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
