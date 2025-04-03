import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/styles.dart';
import 'package:flutter_advanced/core/widgets/app_text_button.dart';
import 'package:flutter_advanced/features/login/data/models/login_request_body_model.dart';
import 'package:flutter_advanced/features/login/logic/login_cubit.dart';
import 'package:flutter_advanced/features/login/ui/widgets/email_and_password.dart';
import 'package:flutter_advanced/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter_advanced/features/login/ui/widgets/or_sign_up_widget.dart';
import 'package:flutter_advanced/features/login/ui/widgets/social_media_login_widget.dart';
import 'package:flutter_advanced/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import 'widgets/already_have_account_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
            const EmailAndPassword(),
            verticalSpace(16),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                'Forgot Password?',
                style: TextStyles.font13BlueRegular,
              ),
            ),
            verticalSpace(32),
            AppTextButton(
              buttonText: 'Login',
              onPressed: () => validateThenDoLogin(context),
            ),
            verticalSpace(46),
            const OrSignUpWidget(),
            verticalSpace(32),
            const SocialMediaLoginWidget(),
            verticalSpace(32),
            const TermsAndConditionsText(),
            verticalSpace(24),
            const AlreadyHaveAccountText(),
            const LoginBlocListener(),
          ]),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    LoginCubit cubit = context.read<LoginCubit>();
    if (cubit.formKey.currentState!.validate()) {
      cubit.emitLoginStates(
          LoginRequestBodyModel(
              email: cubit.emailController.text,
              password: cubit.passwordController.text));
    }
  }
}
