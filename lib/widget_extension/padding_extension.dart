// // GetX already implements
// import 'package:flutter/material.dart';
//
// extension PaddingExtension on Padding {
//   Padding copyWith({
//     Key? key,
//     EdgeInsetsGeometry? padding,
//   }) =>
//       Padding(
//           key: key ?? this.key, padding: padding ?? this.padding, child: this);
// }
//
// extension PaddingSpreadExtension on Widget {
//   Padding paddingAll(double value) => _intoPadding(this, EdgeInsets.all(value));
//
//   Padding paddingSymmetric({double horizontal = 0.0, double vertical = 0.0}) =>
//       _intoPadding(this,
//           EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical));
//
//   Padding paddingOnly(
//           {double left = 0.0,
//           double top = 0.0,
//           double right = 0.0,
//           double bottom = 0.0}) =>
//       _intoPadding(this,
//           EdgeInsets.only(left: left, top: top, right: right, bottom: bottom));
// }
//
// Padding _intoPadding(Widget widget, EdgeInsets padding) {
//   if (widget is Padding) {
//     return widget.copyWith(padding: padding);
//   }
//   return Padding(padding: padding, child: widget);
// }
