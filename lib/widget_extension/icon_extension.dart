import 'package:flutter/material.dart';

extension IconExtension on Icon {
  Icon copyWith({
    Key? key,
    double? size,
    Color? color,
    String? semanticLabel,
    TextDirection? textDirection,
  }) =>
      Icon(icon,
          key: key ?? this.key,
          size: size ?? this.size,
          color: color ?? this.color,
          semanticLabel: semanticLabel ?? this.semanticLabel,
          textDirection: textDirection ?? this.textDirection);

  Icon setSize(double size) => copyWith(size: size);

  Icon setColor(Color color) => copyWith(color: color);

  Icon setSemanticLabel(String semanticLabel) =>
      copyWith(semanticLabel: semanticLabel);

  Icon setTextDirection(TextDirection textDirection) =>
      copyWith(textDirection: textDirection);
}
