import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/extensions.dart';
import 'package:flutter_advanced/core/routing/routes.dart';
import 'package:flutter_advanced/core/theming/colors.dart';
import 'package:flutter_advanced/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(ColorsManger.mainBlue),
          minimumSize: WidgetStateProperty.all(Size(double.infinity, 52)),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r))),
        ),
        child: Text(
          'Get Started',
          style: TextStyles.font16White600Weight,
        ));
  }
}
