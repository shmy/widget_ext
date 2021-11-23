import 'package:flutter/material.dart';

extension IntoListExtension on List<Widget> {
  Column intoColumn(
          {Key? key,
          MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
          MainAxisSize mainAxisSize = MainAxisSize.max,
          CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
          TextDirection? textDirection,
          VerticalDirection verticalDirection = VerticalDirection.down,
          TextBaseline? textBaseline}) =>
      Column(
          key: key,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          children: this);

  Row intoRow(
          {Key? key,
          MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
          MainAxisSize mainAxisSize = MainAxisSize.max,
          CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
          TextDirection? textDirection,
          VerticalDirection verticalDirection = VerticalDirection.down,
          TextBaseline? textBaseline}) =>
      Row(
          key: key,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          children: this);

  Stack intoStack({
    Key? key,
    AlignmentDirectional alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    StackFit fit = StackFit.loose,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      Stack(
          key: key,
          alignment: alignment,
          textDirection: textDirection,
          fit: fit,
          clipBehavior: clipBehavior,
          children: this);
}

extension IntoExtension on Widget {
  // Expanded intoExpanded({int flex = 1}) =>
  //     Expanded(key: key, child: this, flex: flex);
  //
  Center intoCenter({double? widthFactor, double? heightFactor}) => Center(
      key: key,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this);
}
