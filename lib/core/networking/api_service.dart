
import 'package:dio/dio.dart';
import 'package:flutter_advanced/features/login/data/models/login_response_model.dart';
import 'package:flutter_advanced/features/sign_up/data/models/sign_up_request_body_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/login/data/models/login_request_body_model.dart';
import '../../features/sign_up/data/models/sign_up_response_model.dart';
import 'api_constants.dart';

part 'api_service.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl,)
abstract class ApiService {

  factory ApiService(Dio dio,{String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(
      @Body() LoginRequestBodyModel loginRequestBodyModel
      );

  @POST(ApiConstants.signup)
  Future<SignUpResponseModel> signup(
      @Body() SignUpRequestBodyModel signUpRequestBodyModel
      );
}