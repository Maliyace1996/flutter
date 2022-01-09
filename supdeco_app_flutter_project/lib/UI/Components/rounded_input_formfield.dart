import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/UI/Components/custom_suffix_icon.dart';
import 'package:supdeco_app_flutter_project/UI/Components/text_field_container.dart';
import 'package:supdeco_app_flutter_project/constants.dart';

class RoundedInputFormField extends StatelessWidget {
  final String hintText;
  final showSuffixIcon;
  final IconData icon;
  final IconData suffixIcon;

  final ValueChanged<String> onChanged;
  final TextInputType textInputType;
  final Function(String?) onSaved;
  final String? Function(String?) validator;
  final TextEditingController controller;
  const RoundedInputFormField(
      {Key? key,
      required this.hintText,
      this.showSuffixIcon = false,
      this.icon = Icons.person,
      this.suffixIcon = Icons.mail,
      required this.onChanged,
      required this.textInputType,
      required this.onSaved,
      required this.validator,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        keyboardType: textInputType,
        onChanged: (value) => onChanged(value),
        onSaved: (value) => onSaved(value),
        validator: (value) => validator(value),
        cursorColor: kPrimaryColor,
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
          suffixIcon: showSuffixIcon
              ? Icon(
                  suffixIcon,
                  color: kPrimaryColor,
                )
              : null, //CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
        ),
      ),
    );
  }
}
