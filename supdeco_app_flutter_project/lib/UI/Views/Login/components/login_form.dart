import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/UI/Components/box_container.dart';
import 'package:supdeco_app_flutter_project/UI/Components/form_error.dart';
import 'package:supdeco_app_flutter_project/UI/Components/rounded_button.dart';
import 'package:supdeco_app_flutter_project/UI/Components/rounded_input_formfield.dart';
import 'package:supdeco_app_flutter_project/UI/Components/rounded_password_formfield.dart';
import 'package:supdeco_app_flutter_project/UI/Views/Forgot_password/forgot_password_screen.dart';
import 'package:supdeco_app_flutter_project/custom_labels.dart';
import 'package:supdeco_app_flutter_project/helper/keyboard.dart';

import 'package:supdeco_app_flutter_project/constants.dart';
import 'package:supdeco_app_flutter_project/size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  String? email = 'default@email.test';
  String? password;
  bool remember = true;
  String? defaultEmail;

  final _formKey = GlobalKey<FormState>();
  late TextEditingController _ctrlEmail;
  late TextEditingController _ctrlPassword;
  late TextEditingController defaultController;

  final List<String> errors = [];

  late bool hideTextPassword;

  @override
  void initState() {
    super.initState();
    defaultEmail = remember ? email.toString() : '';
    defaultController = TextEditingController(text: defaultEmail);
    _ctrlEmail = defaultController;
    _ctrlPassword = TextEditingController();
    hideTextPassword = true;
  }

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          //SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          //SizedBox(height: getProportionateScreenHeight(30)),
          BoxContainer(
              showColorBox: false,
              margin: EdgeInsets.symmetric(vertical: 1),
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Expanded(
                child: Row(
                  children: [
                    Switch(
                      value: remember,
                      activeColor: kPrimaryColor,
                      onChanged: (value) {
                        setState(() {
                          remember = value;
                          defaultController.text =
                              remember ? email.toString() : '';
                          _ctrlEmail = defaultController;
                        });
                      },
                    ),
                    Text(textSeSouvenir_fr,
                        style: TextStyle(fontSize: 12, color: kPrimaryColor)),
                    Spacer(),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, ForgotPasswordScreen.routeName),
                      child: Text(
                        textPasswordOublier_fr + "?",
                        style: TextStyle(
                            fontSize: 10,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              )),
          FormError(errors: errors),
          RoundedButton(
            text: textLogin_fr,
            press: () => _seConnecter(),
          ),

          //SizedBox(height: getProportionateScreenHeight(20)),
        ],
      ),
    );
  }

  RoundedPasswordFormField buildPasswordFormField() {
    return RoundedPasswordFormField(
      hideText: hideTextPassword,
      onSaved: (value) => password = value,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        }
        if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      showTextPassword: () {
        setState(() {
          hideTextPassword ? hideTextPassword = false : hideTextPassword = true;
        });
      },
    );
  }

  _seConnecter() {
    var form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      print(email);
      print(password);

      // Si tout est ok on va l'écran LoginSuccessScreen.
      KeyboardUtil.hideKeyboard(context);
      //Navigator.pushNamed(context, LoginSuccessScreen.routeName);
      _resetForm();
    }
  }

  _resetForm() {
    setState(() {
      _formKey.currentState!.reset();
      if (!remember) {
        _ctrlEmail.clear();
        email = 'default@email.test';
      }
      _ctrlPassword.clear();
      password = null;
      hideTextPassword = true;
    });
  }

  RoundedInputFormField buildEmailFormField() {
    return RoundedInputFormField(
        hintText: hintTextEmail_fr,
        textInputType: TextInputType.emailAddress,
        onSaved: (newValue) => email = newValue.toString(),
        controller: _ctrlEmail,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kEmailNullError);
          }
          if (emailValidatorRegExp.hasMatch(value)) {
            removeError(error: kInvalidEmailError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
            addError(error: kEmailNullError);
            return "";
          } else if (!emailValidatorRegExp.hasMatch(value)) {
            addError(error: kInvalidEmailError);
            return "";
          }
          return null;
        });
  }
}
