import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/colors.dart';
import 'package:flutter_advanced/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextStyle? style;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.style,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide:
                  const BorderSide(color: ColorsManager.mainBlue, width: 1.3),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide:
                  const BorderSide(color: ColorsManager.lighterGrey, width: 1.3),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
        ),
        hintStyle: hintStyle ?? TextStyles.font14LightGreyMedium,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText ?? false,
      style: style ?? TextStyles.font14DarkBlueMedium,
      validator: validator,
    );
  }
}
