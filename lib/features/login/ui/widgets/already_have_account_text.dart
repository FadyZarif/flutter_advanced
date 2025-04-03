import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
            text: 'Already have an account yet? ',
            style: TextStyles.font13DarkBlueRegular,
            children: [
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                  child: InkWell(
                child: Text(
                  'Sign Up',
                  style: TextStyles.font13BlueSemiBold,
                ),
                onTap: () {},
              )
              )
            ]),
      ),
    );
  }
}
