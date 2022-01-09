import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Login/components/background.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Login/components/login_form.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Signup/signup_screen.dart';
import 'package:supdeco_app_flutter_project/UI/components/already_have_an_account_acheck.dart';
import 'package:supdeco_app_flutter_project/UI/components/rounded_button.dart';
import 'package:supdeco_app_flutter_project/UI/components/rounded_input_field.dart';
import 'package:supdeco_app_flutter_project/UI/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supdeco_app_flutter_project/custom_labels.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              textLogin_fr,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? "assets/icons/login_light.svg"
                  : "assets/icons/login_dark.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            SignForm(),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
