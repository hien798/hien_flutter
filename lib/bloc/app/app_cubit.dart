import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/data.dart';
import 'bloc.dart';

class AppCubit extends Cubit<AppState> {
  final Repository repo;

  AppCubit(this.repo) : super(AppState());

  onChanged({
    Locale? locale,
    ThemeMode? theme,
    String? font,
  }) {
    emit(AppState(
      theme: theme ?? state.theme,
      locale: locale ?? state.locale,
      font: font ?? state.font,
    ));
  }

  onChangedTheme() {
    emit(state.copyWith(
      theme: state.theme != ThemeMode.light ? ThemeMode.light : ThemeMode.dark,
      locale: state.locale,
      font: state.font,
    ));
  }
}
