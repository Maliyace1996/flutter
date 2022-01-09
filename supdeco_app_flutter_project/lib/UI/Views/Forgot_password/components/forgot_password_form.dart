import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/UI/Components/already_have_an_account_acheck.dart';
import 'package:supdeco_app_flutter_project/UI/Components/rounded_button.dart';
import 'package:supdeco_app_flutter_project/UI/Components/form_error.dart';
import 'package:supdeco_app_flutter_project/UI/Components/rounded_input_field.dart';
import 'package:supdeco_app_flutter_project/UI/Components/rounded_input_formfield.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Signup/signup_screen.dart';
import 'package:supdeco_app_flutter_project/custom_labels.dart';
import 'package:supdeco_app_flutter_project/size_config.dart';

import 'package:supdeco_app_flutter_project/constants.dart';

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  late TextEditingController _ctrlEmail;

  @override
  void initState() {
    super.initState();
    _ctrlEmail = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          RoundedInputFormField(
            hintText: hintTextEmail_fr,
            showSuffixIcon: true,
            suffixIcon: Icons.mail_outline_sharp,
            controller: _ctrlEmail,
            textInputType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue.toString(),
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            /*decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            )*/
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight!.toDouble() * 0.1),
          RoundedButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState!.validate()) {
                // Do what you want to do
              }
            },
          ),

          SizedBox(height: SizeConfig.screenHeight!.toDouble() * 0.1),
          //NoAccountText(),
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
    );
  }
}
