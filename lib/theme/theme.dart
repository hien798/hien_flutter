import 'package:flutter/material.dart';

extension ThemeDataExt on ThemeData {
  static ThemeData build(ThemeMode? mode) {
    switch (mode) {
      case ThemeMode.light:
        return ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
        );
      case ThemeMode.dark:
      default:
        return ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xff313131),
        );
    }
  }
}