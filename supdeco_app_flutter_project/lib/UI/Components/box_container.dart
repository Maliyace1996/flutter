import 'package:flutter/material.dart';
import 'package:supdeco_app_flutter_project/constants.dart';
import 'package:supdeco_app_flutter_project/size_config.dart';

class BoxContainer extends StatelessWidget {
  final Widget child;
  final bool showColorBox;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const BoxContainer(
      {Key? key,
      required this.child,
      this.showColorBox = false,
      this.margin = const EdgeInsets.symmetric(vertical: 10),
      this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 5)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: margin,
      padding: padding,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: showColorBox ? kPrimaryLightColor : null,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
