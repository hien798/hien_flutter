// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$_$_UserResponseFromJson(Map<String, dynamic> json) {
  return _$_UserResponse(
    user: UserInfoResponse.fromJson(json['user'] as Map<String, dynamic>),
    token: json['token'] as String,
    refreshToken: json['refreshToken'] as String,
    expiredIn: json['expiredIn'] as String?,
  );
}

Map<String, dynamic> _$_$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'expiredIn': instance.expiredIn,
    };

_$_UserInfoResponse _$_$_UserInfoResponseFromJson(Map<String, dynamic> json) {
  return _$_UserInfoResponse(
    email: json['email'] as String,
    fullName: json['fullName'] as String?,
    phone: json['phone'] as String?,
  );
}

Map<String, dynamic> _$_$_UserInfoResponseToJson(
        _$_UserInfoResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fullName': instance.fullName,
      'phone': instance.phone,
    };
