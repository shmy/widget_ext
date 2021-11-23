import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension DecoratedBoxExtension on DecoratedBox {
  DecoratedBox copyWith(
          {Key? key, Decoration? decoration, DecorationPosition? position}) =>
      DecoratedBox(
        key: key ?? this.key,
        child: child,
        decoration: decoration ?? this.decoration,
        position: position ?? this.position,
      );
}

extension DecoratedBoxSpreadExtension on Widget {
  DecoratedBox boxBackgroundTransparent() =>
      boxBackgroundColor(Colors.transparent);

  DecoratedBox boxBackgroundColor(Color color) {
    if (this is DecoratedBox) {
      if ((this as DecoratedBox).decoration is BoxDecoration) {
        return (this as DecoratedBox).copyWith(
            decoration: ((this as DecoratedBox).decoration as BoxDecoration)
                .copyWith(color: color));
      }
    }
    return DecoratedBox(child: this, decoration: BoxDecoration(color: color));
  }

  DecoratedBox boxBackgroundImage(DecorationImage image) {
    if (this is DecoratedBox) {
      if ((this as DecoratedBox).decoration is BoxDecoration) {
        return (this as DecoratedBox).copyWith(
            decoration: ((this as DecoratedBox).decoration as BoxDecoration)
                .copyWith(image: image));
      }
    }
    return DecoratedBox(child: this, decoration: BoxDecoration(image: image));
  }

  DecoratedBox boxBackgroundGradient(Gradient gradient) {
    if (this is DecoratedBox) {
      if ((this as DecoratedBox).decoration is BoxDecoration) {
        return (this as DecoratedBox).copyWith(
            decoration: ((this as DecoratedBox).decoration as BoxDecoration)
                .copyWith(gradient: gradient));
      }
    }
    return DecoratedBox(
        child: this, decoration: BoxDecoration(gradient: gradient));
  }

  BackdropFilter backgroundBlur(double sigma) => BackdropFilter(
      filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma), child: this);
}
