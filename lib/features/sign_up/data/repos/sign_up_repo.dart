import 'package:flutter_advanced/core/networking/api_error_handler.dart';
import 'package:flutter_advanced/core/networking/api_result.dart';
import 'package:flutter_advanced/core/networking/api_service.dart';
import 'package:flutter_advanced/features/sign_up/data/models/sign_up_response_model.dart';

import '../models/sign_up_request_body_model.dart';

class SignUpRepo{
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpResponseModel>> signUp({required SignUpRequestBodyModel signUpRequestBodyModel}) async {
    try{
      final response = await _apiService.signup(signUpRequestBodyModel);
      return ApiResult.success(response);
    }catch (error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }

  }
}