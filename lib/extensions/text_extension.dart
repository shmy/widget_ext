import 'dart:ui' as ui show TextHeightBehavior;
import 'package:flutter/material.dart';

extension TextExtension on Text {
  Text copyWith({
    Key? key,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    ui.TextHeightBehavior? textHeightBehavior,
  }) =>
      Text(
        data!,
        key: key ?? this.key,
        style: style ?? this.style,
        strutStyle: strutStyle ?? this.strutStyle,
        textAlign: textAlign ?? this.textAlign,
        textDirection: textDirection ?? this.textDirection,
        locale: locale ?? this.locale,
        softWrap: softWrap ?? this.softWrap,
        overflow: overflow ?? this.overflow,
        textScaleFactor: textScaleFactor ?? this.textScaleFactor,
        maxLines: maxLines ?? this.maxLines,
        semanticsLabel: semanticsLabel ?? this.semanticsLabel,
        textWidthBasis: textWidthBasis ?? this.textWidthBasis,
        textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior,
      );

  Text setTextAlign(TextAlign textAlign) => copyWith(textAlign: textAlign);
  Text setTextDirection(TextDirection textDirection) => copyWith(textDirection: textDirection);
  Text setLocale(Locale locale) => copyWith(locale: locale);
  Text setSoftWrap(bool softWrap) => copyWith(softWrap: softWrap);
  Text setOverflow(TextOverflow overflow) => copyWith(overflow: overflow);
  Text setTextScaleFactor(double textScaleFactor) => copyWith(textScaleFactor: textScaleFactor);
  Text setMaxLines(int maxLines) => copyWith(maxLines: maxLines);
  Text setSemanticsLabel(String semanticsLabel) => copyWith(semanticsLabel: semanticsLabel);
  Text setTextWidthBasis(TextWidthBasis textWidthBasis) => copyWith(textWidthBasis: textWidthBasis);
  Text setTextHeightBehavior(ui.TextHeightBehavior textHeightBehavior) => copyWith(textHeightBehavior: textHeightBehavior);
  Text setStyle(TextStyle style) => copyWith(style: style);
  /// useful
  Text fontSize(double fontSize) => copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: fontSize));
  Text color(Color color) => copyWith(style: (style ?? const TextStyle()).copyWith(color: color));
  Text ellipsis({int maxLines = 1}) => copyWith(maxLines: maxLines, overflow: TextOverflow.ellipsis);
  Text fontWeight(FontWeight fontWeight) => copyWith(style: (style ?? const TextStyle()).copyWith(fontWeight: fontWeight));
  Text fontFamily(String fontFamily) => copyWith(style: (style ?? const TextStyle()).copyWith(fontFamily: fontFamily));
  Text fontStyle(FontStyle fontStyle) => copyWith(style: (style ?? const TextStyle()).copyWith(fontStyle: fontStyle));
  Text fontBold() => fontWeight(FontWeight.bold);
  Text styleItalic() => fontStyle(FontStyle.italic);
}
