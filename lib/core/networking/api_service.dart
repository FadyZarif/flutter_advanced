
import 'package:dio/dio.dart';
import 'package:flutter_advanced/features/login/data/models/login_response_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/login/data/models/login_request_body_model.dart';
import 'api_constants.dart';

part 'api_service.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl,)
abstract class ApiService {

  factory ApiService(Dio dio,{String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(
      @Body() LoginRequestBodyModel loginRequestBodyModel
      );
}