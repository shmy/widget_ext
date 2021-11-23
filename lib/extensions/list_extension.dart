import 'package:flutter/material.dart';

extension ListExtension<T> on List<T> {
  List<E> buildAll<E>(E Function(T) builder) =>
      map<E>((item) => builder(item)).toList();

  List<E> buildAllWithIndex<E>(E Function(T, int index) builder) => asMap()
      .entries
      .map<E>((entry) => builder(entry.value, entry.key))
      .toList();

  List<Widget> buildAllAsWidget(Widget Function(T) builder) =>
      buildAll<Widget>(builder);

  List<Widget> buildAllAsWidgetWithIndex(
          Widget Function(T, int index) builder) =>
      buildAllWithIndex<Widget>(builder);
}
