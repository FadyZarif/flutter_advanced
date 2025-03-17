import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/colors.dart';

class SocialMediaLoginWidget extends StatelessWidget {
  const SocialMediaLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 32.w,
      children: const [
        _SocialMediaButton(svgPath: 'assets/svgs/login_google_logo.svg'),
        _SocialMediaButton(svgPath: 'assets/svgs/login_facebook_logo.svg'),
        _SocialMediaButton(svgPath: 'assets/svgs/login_apple_logo.svg'),
      ],
    );
  }
}

class _SocialMediaButton extends StatelessWidget {
  final String svgPath;
  const _SocialMediaButton({super.key, required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: ColorsManger.lighterGrey,
      radius: 25.r,
      child: SvgPicture.asset(svgPath,width: 24.w,),
    );
  }
}
