import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

extension GestureDetectorExtension on GestureDetector {
  GestureDetector copyWith({
    Key? key,
    Widget? child,
    GestureTapDownCallback? onTapDown,
    GestureTapUpCallback? onTapUp,
    GestureTapCallback? onTap,
    GestureTapCancelCallback? onTapCancel,
    GestureTapCallback? onSecondaryTap,
    GestureTapDownCallback? onSecondaryTapDown,
    GestureTapUpCallback? onSecondaryTapUp,
    GestureTapCancelCallback? onSecondaryTapCancel,
    GestureTapDownCallback? onTertiaryTapDown,
    GestureTapUpCallback? onTertiaryTapUp,
    GestureTapCancelCallback? onTertiaryTapCancel,
    GestureTapDownCallback? onDoubleTapDown,
    GestureTapCallback? onDoubleTap,
    GestureTapCancelCallback? onDoubleTapCancel,
    GestureLongPressDownCallback? onLongPressDown,
    GestureLongPressCancelCallback? onLongPressCancel,
    GestureLongPressCallback? onLongPress,
    GestureLongPressStartCallback? onLongPressStart,
    GestureLongPressMoveUpdateCallback? onLongPressMoveUpdate,
    GestureLongPressUpCallback? onLongPressUp,
    GestureLongPressEndCallback? onLongPressEnd,
    GestureLongPressDownCallback? onSecondaryLongPressDown,
    GestureLongPressCancelCallback? onSecondaryLongPressCancel,
    GestureLongPressCallback? onSecondaryLongPress,
    GestureLongPressStartCallback? onSecondaryLongPressStart,
    GestureLongPressMoveUpdateCallback? onSecondaryLongPressMoveUpdate,
    GestureLongPressUpCallback? onSecondaryLongPressUp,
    GestureLongPressEndCallback? onSecondaryLongPressEnd,
    GestureLongPressDownCallback? onTertiaryLongPressDown,
    GestureLongPressCancelCallback? onTertiaryLongPressCancel,
    GestureLongPressCallback? onTertiaryLongPress,
    GestureLongPressStartCallback? onTertiaryLongPressStart,
    GestureLongPressMoveUpdateCallback? onTertiaryLongPressMoveUpdate,
    GestureLongPressUpCallback? onTertiaryLongPressUp,
    GestureLongPressEndCallback? onTertiaryLongPressEnd,
    GestureDragDownCallback? onVerticalDragDown,
    GestureDragStartCallback? onVerticalDragStart,
    GestureDragUpdateCallback? onVerticalDragUpdate,
    GestureDragEndCallback? onVerticalDragEnd,
    GestureDragCancelCallback? onVerticalDragCancel,
    GestureDragDownCallback? onHorizontalDragDown,
    GestureDragStartCallback? onHorizontalDragStart,
    GestureDragUpdateCallback? onHorizontalDragUpdate,
    GestureDragEndCallback? onHorizontalDragEnd,
    GestureDragCancelCallback? onHorizontalDragCancel,
    GestureForcePressStartCallback? onForcePressStart,
    GestureForcePressPeakCallback? onForcePressPeak,
    GestureForcePressUpdateCallback? onForcePressUpdate,
    GestureForcePressEndCallback? onForcePressEnd,
    GestureDragDownCallback? onPanDown,
    GestureDragStartCallback? onPanStart,
    GestureDragUpdateCallback? onPanUpdate,
    GestureDragEndCallback? onPanEnd,
    GestureDragCancelCallback? onPanCancel,
    GestureScaleStartCallback? onScaleStart,
    GestureScaleUpdateCallback? onScaleUpdate,
    GestureScaleEndCallback? onScaleEnd,
    HitTestBehavior? behavior,
    bool? excludeFromSemantics,
    DragStartBehavior? dragStartBehavior,
  }) =>
      GestureDetector(
        child: child,
        key: key ?? this.key,
        onTapDown: onTapDown ?? this.onTapDown,
        onTapUp: onTapUp ?? this.onTapUp,
        onTap: onTap ?? this.onTap,
        onTapCancel: onTapCancel ?? this.onTapCancel,
        onSecondaryTap: onSecondaryTap ?? this.onSecondaryTap,
        onSecondaryTapDown: onSecondaryTapDown ?? this.onSecondaryTapDown,
        onSecondaryTapUp: onSecondaryTapUp ?? this.onSecondaryTapUp,
        onSecondaryTapCancel: onSecondaryTapCancel ?? this.onSecondaryTapCancel,
        onTertiaryTapDown: onTertiaryTapDown ?? this.onTertiaryTapDown,
        onTertiaryTapUp: onTertiaryTapUp ?? this.onTertiaryTapUp,
        onTertiaryTapCancel: onTertiaryTapCancel ?? this.onTertiaryTapCancel,
        onDoubleTapDown: onDoubleTapDown ?? this.onDoubleTapDown,
        onDoubleTap: onDoubleTap ?? this.onDoubleTap,
        onDoubleTapCancel: onDoubleTapCancel ?? this.onDoubleTapCancel,
        onLongPressDown: onLongPressDown ?? this.onLongPressDown,
        onLongPressCancel: onLongPressCancel ?? this.onLongPressCancel,
        onLongPress: onLongPress ?? this.onLongPress,
        onLongPressStart: onLongPressStart ?? this.onLongPressStart,
        onLongPressMoveUpdate: onLongPressMoveUpdate ?? this.onLongPressMoveUpdate,
        onLongPressUp: onLongPressUp ?? this.onLongPressUp,
        onLongPressEnd: onLongPressEnd ?? this.onLongPressEnd,
        onSecondaryLongPressDown: onSecondaryLongPressDown ?? this.onSecondaryLongPressDown,
        onSecondaryLongPressCancel: onSecondaryLongPressCancel ?? this.onSecondaryLongPressCancel,
        onSecondaryLongPress: onSecondaryLongPress ?? this.onSecondaryLongPress,
        onSecondaryLongPressStart: onSecondaryLongPressStart ?? this.onSecondaryLongPressStart,
        onSecondaryLongPressMoveUpdate: onSecondaryLongPressMoveUpdate ?? this.onSecondaryLongPressMoveUpdate,
        onSecondaryLongPressUp: onSecondaryLongPressUp ?? this.onSecondaryLongPressUp,
        onSecondaryLongPressEnd: onSecondaryLongPressEnd ?? this.onSecondaryLongPressEnd,
        onTertiaryLongPressDown: onTertiaryLongPressDown ?? this.onTertiaryLongPressDown,
        onTertiaryLongPressCancel: onTertiaryLongPressCancel ?? this.onTertiaryLongPressCancel,
        onTertiaryLongPress: onTertiaryLongPress ?? this.onTertiaryLongPress,
        onTertiaryLongPressStart: onTertiaryLongPressStart ?? this.onTertiaryLongPressStart,
        onTertiaryLongPressMoveUpdate: onTertiaryLongPressMoveUpdate ?? this.onTertiaryLongPressMoveUpdate,
        onTertiaryLongPressUp: onTertiaryLongPressUp ?? this.onTertiaryLongPressUp,
        onTertiaryLongPressEnd: onTertiaryLongPressEnd ?? this.onTertiaryLongPressEnd,
        onVerticalDragDown: onVerticalDragDown ?? this.onVerticalDragDown,
        onVerticalDragStart: onVerticalDragStart ?? this.onVerticalDragStart,
        onVerticalDragUpdate: onVerticalDragUpdate ?? this.onVerticalDragUpdate,
        onVerticalDragEnd: onVerticalDragEnd ?? this.onVerticalDragEnd,
        onVerticalDragCancel: onVerticalDragCancel ?? this.onVerticalDragCancel,
        onHorizontalDragDown: onHorizontalDragDown ?? this.onHorizontalDragDown,
        onHorizontalDragStart: onHorizontalDragStart ?? this.onHorizontalDragStart,
        onHorizontalDragUpdate: onHorizontalDragUpdate ?? this.onHorizontalDragUpdate,
        onHorizontalDragEnd: onHorizontalDragEnd ?? this.onHorizontalDragEnd,
        onHorizontalDragCancel: onHorizontalDragCancel ?? this.onHorizontalDragCancel,
        onForcePressStart: onForcePressStart ?? this.onForcePressStart,
        onForcePressPeak: onForcePressPeak ?? this.onForcePressPeak,
        onForcePressUpdate: onForcePressUpdate ?? this.onForcePressUpdate,
        onForcePressEnd: onForcePressEnd ?? this.onForcePressEnd,
        onPanDown: onPanDown ?? this.onPanDown,
        onPanStart: onPanStart ?? this.onPanStart,
        onPanUpdate: onPanUpdate ?? this.onPanUpdate,
        onPanEnd: onPanEnd ?? this.onPanEnd,
        onPanCancel: onPanCancel ?? this.onPanCancel,
        onScaleStart: onScaleStart ?? this.onScaleStart,
        onScaleUpdate: onScaleUpdate ?? this.onScaleUpdate,
        onScaleEnd: onScaleEnd ?? this.onScaleEnd,
        behavior: behavior ?? this.behavior,
        excludeFromSemantics: excludeFromSemantics ?? this.excludeFromSemantics,
        dragStartBehavior: dragStartBehavior ?? this.dragStartBehavior,
      );
}

/// useful
extension GestureDetectorSpreadExtension on Widget {
  GestureDetector onTap(GestureTapCallback? onTap) {
    if (this is GestureDetector) {
      return (this as GestureDetector).copyWith(onTap: onTap);
    }
    return GestureDetector(onTap: onTap, child: this);
  }
}