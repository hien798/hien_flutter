// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginUserRequest _$LoginUserRequestFromJson(Map<String, dynamic> json) {
  return _LoginUserRequest.fromJson(json);
}

/// @nodoc
class _$LoginUserRequestTearOff {
  const _$LoginUserRequestTearOff();

  _LoginUserRequest call({required String email, required String password}) {
    return _LoginUserRequest(
      email: email,
      password: password,
    );
  }

  LoginUserRequest fromJson(Map<String, Object> json) {
    return LoginUserRequest.fromJson(json);
  }
}

/// @nodoc
const $LoginUserRequest = _$LoginUserRequestTearOff();

/// @nodoc
mixin _$LoginUserRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginUserRequestCopyWith<LoginUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserRequestCopyWith<$Res> {
  factory $LoginUserRequestCopyWith(
          LoginUserRequest value, $Res Function(LoginUserRequest) then) =
      _$LoginUserRequestCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginUserRequestCopyWithImpl<$Res>
    implements $LoginUserRequestCopyWith<$Res> {
  _$LoginUserRequestCopyWithImpl(this._value, this._then);

  final LoginUserRequest _value;
  // ignore: unused_field
  final $Res Function(LoginUserRequest) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginUserRequestCopyWith<$Res>
    implements $LoginUserRequestCopyWith<$Res> {
  factory _$LoginUserRequestCopyWith(
          _LoginUserRequest value, $Res Function(_LoginUserRequest) then) =
      __$LoginUserRequestCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$LoginUserRequestCopyWithImpl<$Res>
    extends _$LoginUserRequestCopyWithImpl<$Res>
    implements _$LoginUserRequestCopyWith<$Res> {
  __$LoginUserRequestCopyWithImpl(
      _LoginUserRequest _value, $Res Function(_LoginUserRequest) _then)
      : super(_value, (v) => _then(v as _LoginUserRequest));

  @override
  _LoginUserRequest get _value => super._value as _LoginUserRequest;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_LoginUserRequest(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LoginUserRequest implements _LoginUserRequest {
  const _$_LoginUserRequest({required this.email, required this.password});

  factory _$_LoginUserRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginUserRequestFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginUserRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginUserRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$LoginUserRequestCopyWith<_LoginUserRequest> get copyWith =>
      __$LoginUserRequestCopyWithImpl<_LoginUserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginUserRequestToJson(this);
  }
}

abstract class _LoginUserRequest implements LoginUserRequest {
  const factory _LoginUserRequest(
      {required String email, required String password}) = _$_LoginUserRequest;

  factory _LoginUserRequest.fromJson(Map<String, dynamic> json) =
      _$_LoginUserRequest.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginUserRequestCopyWith<_LoginUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
