library widget_ext;
import 'package:flutter/cupertino.dart';

extension AlignExtension on Align {
  Align copyWith(
          {Key? key,
          AlignmentGeometry? alignment,
          double? widthFactor,
          double? heightFactor}) =>
      Align(
          key: key ?? this.key,
          alignment: alignment ?? this.alignment,
          widthFactor: widthFactor ?? this.widthFactor,
          heightFactor: heightFactor ?? this.heightFactor,
          child: child);

  Align setWidthFactor(double widthFactor) => copyWith(widthFactor: widthFactor);

  Align setWeightFactor(double heightFactor) =>
      copyWith(heightFactor: heightFactor);
}

extension AlignSpreadExtension on Widget {
  Align alignCenter() => _intoAlign(this, Alignment.center);

  Align alignTopCenter() => _intoAlign(this, Alignment.topCenter);

  Align alignBottomCenter() => _intoAlign(this, Alignment.bottomCenter);

  Align alignCenterLeft() => _intoAlign(this, Alignment.centerLeft);

  Align alignCenterRight() => _intoAlign(this, Alignment.centerRight);

  Align alignBottomLeft() => _intoAlign(this, Alignment.bottomLeft);

  Align alignBottomRight() => _intoAlign(this, Alignment.bottomRight);

  Align alignTopLeft() => _intoAlign(this, Alignment.topLeft);

  Align alignTopRight() => _intoAlign(this, Alignment.topRight);
}

Align _intoAlign(Widget widget, AlignmentGeometry alignment) {
  if (widget is Align) {
    return widget.copyWith(alignment: alignment);
  }
  return Align(child: widget, alignment: alignment);
}
