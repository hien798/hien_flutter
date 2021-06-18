import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState() = _AuthState;

  const factory AuthState.authenticated({UserModel? user}) = Authenticated;

  const factory AuthState.unauthenticated({String? error}) = Unauthenticated;
}
