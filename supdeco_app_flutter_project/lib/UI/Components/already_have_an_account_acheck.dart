import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/constants.dart';
import 'package:supdeco_app_flutter_project/custom_labels.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? textPasDeCompte_fr : textDejaUnCompte_fr,
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () => press(),
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
