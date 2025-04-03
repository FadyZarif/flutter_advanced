import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_request_body_model.g.dart';

@JsonSerializable()
class SignUpRequestBodyModel {
  final String email;
  final String name;
  final String phone;
  final String password;
  @JsonKey(name:'password_confirmation',)
  final String passwordConfirmation;
  final int gender;

  SignUpRequestBodyModel({
    required this.email,
    required this.name,
    required this.phone,
    required this.password,
    required this.passwordConfirmation,
    required this.gender,
  });

  Map<String,dynamic> toJson() => _$SignUpRequestBodyModelToJson(this);
}
