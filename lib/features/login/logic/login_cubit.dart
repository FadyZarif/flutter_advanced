import 'package:flutter/material.dart';
import 'package:flutter_advanced/features/login/data/models/login_request_body_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repos/login_repo.dart';
import 'login_state.dart';


class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates(LoginRequestBodyModel loginRequestBodyModel) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login( loginRequestBodyModel: loginRequestBodyModel);
    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}