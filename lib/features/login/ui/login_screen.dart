import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/colors.dart';
import 'package:flutter_advanced/core/theming/styles.dart';
import 'package:flutter_advanced/core/widgets/app_text_button.dart';
import 'package:flutter_advanced/core/widgets/app_text_form_field.dart';
import 'package:flutter_advanced/features/login/ui/widgets/or_sign_up_widget.dart';
import 'package:flutter_advanced/features/login/ui/widgets/social_media_login_widget.dart';
import 'package:flutter_advanced/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/helpers/spacing.dart';
import 'widgets/already_have_account_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Welcome Back',
              style: TextStyles.font24BlueBold,
            ),
            verticalSpace(8),
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: TextStyles.font14GreyRegular,
            ),
            verticalSpace(36),
            Form(
                key: _formKey,
                child: Column(children: [
                  const AppTextFormField(hintText: 'Email'),
                  verticalSpace(16),
                  AppTextFormField(
                    hintText: 'Password',
                    obscureText: _obscureText,
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: _obscureText
                          ?const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility) ,
                    ),
                  ),
                  verticalSpace(16),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyles.font13BlueRegular,
                    ),
                  ),
                  verticalSpace(32),
                  const AppTextButton(buttonText: 'Login'),
                  verticalSpace(46),
                  const OrSignUpWidget(),
                  verticalSpace(32),
                  const SocialMediaLoginWidget(),
                  verticalSpace(32),
                  const TermsAndConditionsText(),
                  verticalSpace(24),
                  const AlreadyHaveAccountText(),




                ])),
          ]),
        ),
      ),
    );
  }
}
