import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Login/login_screen.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Signup/components/background.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Signup/components/or_divider.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Signup/components/social_icon.dart';
import 'package:supdeco_app_flutter_project/UI/Components/already_have_an_account_acheck.dart';
import 'package:supdeco_app_flutter_project/UI/Components/rounded_button.dart';
import 'package:supdeco_app_flutter_project/UI/Components/rounded_input_field.dart';
import 'package:supdeco_app_flutter_project/UI/Components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supdeco_app_flutter_project/custom_labels.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              textSingup_fr,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? "assets/icons/signup_light.svg"
                  : "assets/icons/signup_dark.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: hintTextEmail_fr,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: textSingup_fr,
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
