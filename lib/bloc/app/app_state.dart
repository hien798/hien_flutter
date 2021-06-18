import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    Locale? locale,
    ThemeMode? theme,
    String? font,
  }) = _AppState;
}
