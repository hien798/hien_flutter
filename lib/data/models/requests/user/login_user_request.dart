import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user_request.freezed.dart';

part 'login_user_request.g.dart';

@freezed
abstract class LoginUserRequest with _$LoginUserRequest {

  @JsonSerializable(explicitToJson: true)
  const factory LoginUserRequest({
    required String email,
    required String password,
  }) = _LoginUserRequest;

  factory LoginUserRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginUserRequestFromJson(json);
}
