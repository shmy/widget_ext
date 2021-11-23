import 'package:flutter/material.dart';

extension ConstrainedBoxSpreadExtension on Widget {
  ConstrainedBox setBoxSize(double width, double height) => ConstrainedBox(
      child: this,
      constraints:
          BoxConstraints.tightFor(width: width, height: height));
}
