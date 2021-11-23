import 'package:flutter/cupertino.dart';

extension TransformExtension on Transform {
  Transform copyWith(
          {Key? key,
          Matrix4? transform,
          Offset? origin,
          AlignmentGeometry? alignment,
          bool? transformHitTests,
          FilterQuality? filterQuality}) =>
      Transform(
          key: key ?? this.key,
          child: child,
          transform: transform ?? this.transform,
          origin: origin ?? this.origin,
          alignment: alignment ?? this.alignment,
          transformHitTests: transformHitTests ?? this.transformHitTests,
          filterQuality: filterQuality ?? this.filterQuality);

  Transform setTransform(Matrix4 transform) => copyWith(transform: transform);

  Transform setOrigin(Offset origin) => copyWith(origin: origin);

  Transform setAlignment(AlignmentGeometry alignment) =>
      copyWith(alignment: alignment);

  Transform setTransformHitTests(bool transformHitTests) =>
      copyWith(transformHitTests: transformHitTests);

  Transform setFilterQuality(FilterQuality filterQuality) =>
      copyWith(filterQuality: filterQuality);
}

extension TransformSpreadExtension on Widget {
  Transform rotateX(double angle) =>
      _intoTransform(this, (Matrix4 matrix4) => matrix4..rotateX(angle));

  Transform rotateY(double angle) =>
      _intoTransform(this, (Matrix4 matrix4) => matrix4..rotateY(angle));

  Transform rotateZ(double angle) =>
      _intoTransform(this, (Matrix4 matrix4) => matrix4..rotateZ(angle));

  Transform scale(double x, [double? y, double? z]) =>
      _intoTransform(this, (Matrix4 matrix4) => matrix4..scale(x, y, z));

  Transform translate(double x, [double y = 0.0, double z = 0.0]) =>
      _intoTransform(this, (Matrix4 matrix4) => matrix4..translate(x, y, z));
}

Transform _intoTransform(
    Widget widget, Matrix4 Function(Matrix4 transform) transformBuilder) {
  if (widget is Transform) {
    return widget.copyWith(transform: transformBuilder(widget.transform));
  }
  return Transform(
      transform: transformBuilder(Matrix4.identity()), child: widget);
}
