import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static  TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static  TextStyle font32BlueBoldWeight = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w900,
    color: ColorsManger.mainBlue,
  );

  static TextStyle font13GreyRegularWeight = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    color: ColorsManger.grey,
  );

  static TextStyle font16White600Weight = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

}