import 'package:flutter/material.dart';
//import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Forgot_password/components/forgot_password_form.dart';
import 'package:supdeco_app_flutter_project/constants.dart';
import 'package:supdeco_app_flutter_project/custom_labels.dart';
//import 'package:shop_app/components/no_account_text.dart';
import 'package:supdeco_app_flutter_project/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight!.toDouble() * 0.04),
              Text(
                textPasswordOublier_fr,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                textPasswordOublierDescription_fr,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight!.toDouble() * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}
