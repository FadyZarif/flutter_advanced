import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,

      text: TextSpan(
      text: 'By logging, you agree to our ',
      style: TextStyles.font11GreyRegular.copyWith(height: 1.5),
      children: [
        TextSpan(
          text: 'Terms & Conditions',
          style: TextStyles.font13DarkBlueMedium
        ),
        TextSpan(
          text: ' and ',
          style: TextStyles.font11GreyRegular
        ),
        TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font13DarkBlueMedium
        ),
      ]
    ),);
  }
}
