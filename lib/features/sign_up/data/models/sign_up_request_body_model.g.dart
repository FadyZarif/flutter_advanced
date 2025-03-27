// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequestBodyModel _$SignUpRequestBodyModelFromJson(
        Map<String, dynamic> json) =>
    SignUpRequestBodyModel(
      email: json['email'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
      gender: (json['gender'] as num).toInt(),
    );

Map<String, dynamic> _$SignUpRequestBodyModelToJson(
        SignUpRequestBodyModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
      'gender': instance.gender,
    };
