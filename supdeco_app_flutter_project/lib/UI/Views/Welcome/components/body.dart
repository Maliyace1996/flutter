import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Login/login_screen.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Signup/signup_screen.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Welcome/components/background.dart';
import 'package:supdeco_app_flutter_project/UI/Components/rounded_button.dart';
import 'package:supdeco_app_flutter_project/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supdeco_app_flutter_project/custom_labels.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              textBienvenue_fr,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              "Thiès",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/images/supdeco_thies.jpg",
              width: size.width * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: textSeConnecter_fr,
              press: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
            ),
            RoundedButton(
              text: textSinscrire_fr,
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
