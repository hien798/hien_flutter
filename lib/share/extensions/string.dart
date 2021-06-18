import 'package:flutter/material.dart';

extension TextStyleExtensions on String? {
  Widget toText({
    double? size,
    FontWeight? weight,
    Color? color,
    TextStyle? style,
    int? maxLines,
    TextOverflow? overflow,
    TextAlign? textAlign,
    bool selectable = false,
  }) {
    return selectable
        ? SelectableText(
            this ?? '',
            maxLines: maxLines,
            textAlign: textAlign,
            style: TextStyle(
              fontSize: size,
              fontWeight: weight,
              color: color,
            ).merge(style),
          )
        : Text(
            this ?? '',
            maxLines: maxLines,
            overflow: overflow,
            textAlign: textAlign,
            style: TextStyle(
              fontSize: size,
              fontWeight: weight,
              color: color,
            ).merge(style),
          );
  }
}
