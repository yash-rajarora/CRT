import 'package:crt/Utils/constants/colors.dart';
import 'package:crt/Utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = TSizes.cardRadiusLg,
    this.padding,
    this.child,
    this.backgroundColor=TColors.white,
    this.margin,
    this.showBorder = false,
    this.borderColor = TColors.borderPrimary,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;
  final Color borderColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}