import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/UI/Components/text_field_container.dart';
import 'package:supdeco_app_flutter_project/constants.dart';
import 'package:supdeco_app_flutter_project/custom_labels.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  final hideText = true;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: hideText,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: hintTextPassword_fr,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
