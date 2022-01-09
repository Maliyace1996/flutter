import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/UI/Components/text_field_container.dart';
import 'package:supdeco_app_flutter_project/constants.dart';
import 'package:supdeco_app_flutter_project/custom_labels.dart';

class RoundedPasswordFormField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  final hideText;
  final Function(String?) onSaved;
  final String? Function(String?) validator;
  final Function showTextPassword;

  const RoundedPasswordFormField(
      {Key? key,
      this.hideText = true,
      required this.onChanged,
      required this.onSaved,
      required this.validator,
      required this.showTextPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: hideText,
        onChanged: (value) => onChanged(value),
        onSaved: (value) => onSaved(value),
        validator: (value) => validator(value),
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: hintTextPassword_fr,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            focusColor: null,
            icon: Icon(
              hideText ? Icons.visibility : Icons.visibility_off,
              color: kPrimaryColor,
            ),
            onPressed: () => showTextPassword(),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
