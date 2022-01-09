import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supdeco_app_flutter_project/UI/Components/box_container.dart';
import 'package:supdeco_app_flutter_project/constants.dart';

import 'package:supdeco_app_flutter_project/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BoxContainer(
        showColorBox: false,
        margin: EdgeInsets.symmetric(vertical: 1),
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Expanded(
          child: Column(
            children: List.generate(
                errors.length, (index) => formErrorText(error: errors[index])),
          ),
        ));
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        /*SizedBox(
          width: SizeConfig.screenWidth!.toDouble() * 0.08,
        ),*/
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: SizeConfig.screenHeight!.toDouble() * 0.015,
          width: SizeConfig.screenWidth!.toDouble() * 0.03,
        ),
        SizedBox(
          height: SizeConfig.screenHeight!.toDouble() * 0.03,
          width: SizeConfig.screenWidth!.toDouble() * 0.01,
        ),
        Text(
          error,
          style: TextStyle(color: kErrorColor, fontSize: 12),
        ),
      ],
    );
  }
}
