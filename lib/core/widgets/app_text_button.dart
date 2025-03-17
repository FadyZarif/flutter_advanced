import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../routing/routes.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextButton extends StatelessWidget {
  final Color? backgroundColor;
  final double? borderRadius;
  final double? buttonHeight;
  final double? buttonWidth;
  final double? horizontalPadding;
  final double? verticalPadding;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final VoidCallback? onPressed;

  const AppTextButton(
      {super.key,
      this.backgroundColor,
      this.borderRadius,
      this.buttonHeight,
      this.buttonWidth,
      this.horizontalPadding,
      this.verticalPadding,
      required this.buttonText,
      this.buttonTextStyle,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.r))),
          backgroundColor:
              WidgetStateProperty.all(backgroundColor ?? ColorsManger.mainBlue),
          padding: WidgetStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
              horizontal: horizontalPadding?.w ?? 12.w,
              vertical: verticalPadding?.h ?? 14.h,
            ),
          ),
          minimumSize: WidgetStateProperty.all(
              Size(buttonWidth?.w ?? double.infinity, buttonHeight?.h ?? 52)),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: buttonTextStyle ?? TextStyles.font16WhiteSemiBold,
        ));
  }
}
