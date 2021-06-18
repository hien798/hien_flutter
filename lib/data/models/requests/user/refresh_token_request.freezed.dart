// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'refresh_token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefreshTokenRequest _$RefreshTokenRequestFromJson(Map<String, dynamic> json) {
  return _RefreshTokenRequest.fromJson(json);
}

/// @nodoc
class _$RefreshTokenRequestTearOff {
  const _$RefreshTokenRequestTearOff();

  _RefreshTokenRequest call({required String refreshToken}) {
    return _RefreshTokenRequest(
      refreshToken: refreshToken,
    );
  }

  RefreshTokenRequest fromJson(Map<String, Object> json) {
    return RefreshTokenRequest.fromJson(json);
  }
}

/// @nodoc
const $RefreshTokenRequest = _$RefreshTokenRequestTearOff();

/// @nodoc
mixin _$RefreshTokenRequest {
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenRequestCopyWith<RefreshTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenRequestCopyWith<$Res> {
  factory $RefreshTokenRequestCopyWith(
          RefreshTokenRequest value, $Res Function(RefreshTokenRequest) then) =
      _$RefreshTokenRequestCopyWithImpl<$Res>;
  $Res call({String refreshToken});
}

/// @nodoc
class _$RefreshTokenRequestCopyWithImpl<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  _$RefreshTokenRequestCopyWithImpl(this._value, this._then);

  final RefreshTokenRequest _value;
  // ignore: unused_field
  final $Res Function(RefreshTokenRequest) _then;

  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RefreshTokenRequestCopyWith<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  factory _$RefreshTokenRequestCopyWith(_RefreshTokenRequest value,
          $Res Function(_RefreshTokenRequest) then) =
      __$RefreshTokenRequestCopyWithImpl<$Res>;
  @override
  $Res call({String refreshToken});
}

/// @nodoc
class __$RefreshTokenRequestCopyWithImpl<$Res>
    extends _$RefreshTokenRequestCopyWithImpl<$Res>
    implements _$RefreshTokenRequestCopyWith<$Res> {
  __$RefreshTokenRequestCopyWithImpl(
      _RefreshTokenRequest _value, $Res Function(_RefreshTokenRequest) _then)
      : super(_value, (v) => _then(v as _RefreshTokenRequest));

  @override
  _RefreshTokenRequest get _value => super._value as _RefreshTokenRequest;

  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_RefreshTokenRequest(
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefreshTokenRequest implements _RefreshTokenRequest {
  const _$_RefreshTokenRequest({required this.refreshToken});

  factory _$_RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_RefreshTokenRequestFromJson(json);

  @override
  final String refreshToken;

  @override
  String toString() {
    return 'RefreshTokenRequest(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RefreshTokenRequest &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(refreshToken);

  @JsonKey(ignore: true)
  @override
  _$RefreshTokenRequestCopyWith<_RefreshTokenRequest> get copyWith =>
      __$RefreshTokenRequestCopyWithImpl<_RefreshTokenRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RefreshTokenRequestToJson(this);
  }
}

abstract class _RefreshTokenRequest implements RefreshTokenRequest {
  const factory _RefreshTokenRequest({required String refreshToken}) =
      _$_RefreshTokenRequest;

  factory _RefreshTokenRequest.fromJson(Map<String, dynamic> json) =
      _$_RefreshTokenRequest.fromJson;

  @override
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RefreshTokenRequestCopyWith<_RefreshTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
