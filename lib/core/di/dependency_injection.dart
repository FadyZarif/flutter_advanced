import 'package:dio/dio.dart';
import 'package:flutter_advanced/core/networking/api_service.dart';
import 'package:flutter_advanced/core/networking/dio_factory.dart';
import 'package:flutter_advanced/features/login/data/repos/login_repo.dart';
import 'package:flutter_advanced/features/login/logic/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  /// Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(()=>ApiService(dio));

  ///Login
  getIt.registerLazySingleton<LoginRepo>(()=>LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(()=>LoginCubit(getIt()));
}
