import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final String? message;
  @JsonKey(name: 'data')
  final UserData? userData;
  final bool? status;
  final int? code;

  LoginResponseModel({this.message, this.userData, this.status, this.code});

  factory LoginResponseModel.fromJson(Map<String,dynamic> json)=> _$LoginResponseModelFromJson(json);
}

@JsonSerializable()
class UserData{
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String,dynamic> json)=> _$UserDataFromJson(json);
}