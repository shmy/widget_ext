import 'package:flutter/material.dart';

extension VisibilitySpreadExtension on Widget {
  Visibility setVisible(bool visible) =>
      Visibility(visible: visible, child: this);
}
