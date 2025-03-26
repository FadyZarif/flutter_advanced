import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/app_regex.dart';
import 'package:flutter_advanced/features/login/logic/login_cubit.dart';
import 'package:flutter_advanced/features/login/ui/widgets/password_validations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {

  bool _obscureText = true;
  late TextEditingController passwordController;

  bool hasLowerCase=false;
  bool hasUpperCase=false;
  bool hasNumber=false;
  bool hasSpecialCharacter=false;
  bool hasMinLength=false;

  @override
  void initState() {
    super.initState();
    passwordController = context
        .read<LoginCubit>()
        .passwordController;

    setupPasswordControllerListener();
  }
  void setupPasswordControllerListener() {
    passwordController.addListener((){
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);

      });
    });
  }


  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    LoginCubit cubit = context.read<LoginCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(

        children: [
          AppTextFormField(
            controller: cubit.emailController,
            hintText: 'Email',
            validator: (value){
              if(value == null || value.isEmpty || !AppRegex.isEmailValid(value)){
                return 'Please enter valid email';
              }
              return null;
            },
          ),
          verticalSpace(16),
          AppTextFormField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: _obscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: _obscureText
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
            ),
            validator: (value){
              if(value == null || value.isEmpty || !(hasLowerCase && hasUpperCase && hasNumber && hasSpecialCharacter && hasMinLength)){
                return 'Please enter valid password';
              }
              return null;
            },
          ),
          verticalSpace(16),
          PasswordValidations(hasLowerCase: hasLowerCase, hasUpperCase: hasUpperCase, hasNumber: hasNumber, hasSpecialCharacter: hasSpecialCharacter, hasMinLength: hasMinLength,),

        ],
      ),
    );
  }

}
