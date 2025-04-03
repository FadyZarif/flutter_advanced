import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class OrSignUpWidget extends StatelessWidget {
  const OrSignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: ColorsManager.lightGrey,
          ),
        ),
        horizontalSpace(10),
        Text(
          'Or Sign up with',
          style: TextStyles.font12GreyRegular,
        ),
        horizontalSpace(10),
        Expanded(
          child: Container(
            height: 1,
            color: ColorsManager.lightGrey,
          ),
        ),
      ],
    );
  }
}
