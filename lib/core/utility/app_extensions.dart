
import 'package:bloc_practices/core/utility/space.dart';
import 'package:flutter/material.dart';

extension ColorExtension on String {
  Color toColor() {
    var hexColor = replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    if (hexColor.length == 8) {
      return Color(int.parse('0x$hexColor'));
    }
    return Color(int.parse('0x$hexColor'));
  }
}

extension StringCasingExtension on String {
  String toFirstLetterCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';

  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}

extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inplace = true]) {
    final ids = <dynamic>{};
    var list = inplace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }
}

extension MyIterable<E> on Iterable<E> {
  Iterable<E> sortedBy(Comparable Function(E e) key) =>
      toList()..sort((a, b) => key(a).compareTo(key(b)));
}



/// ------------- [AppMargin] is an extension on [Widget] used to add extra functionalities in the widget ------------------- ///
extension AppMargin on Widget {
  Padding marginOnly({double? left, double? right, double? top, double? bottom}) => Padding(padding: EdgeInsets.only(top: top ?? 0, bottom: bottom ?? 0, left: left ?? 0, right: right ?? 0), child: this);
  Padding safeTop(BuildContext context) => Padding(padding: EdgeInsets.only(top: Space.padTop(context),), child: this);
  Padding safeBottom(BuildContext context) => Padding(padding: EdgeInsets.only(bottom: Space.padBottom(context),), child: this);
  SizedBox f(BuildContext context) => SizedBox(height: Space.h(context), width: Space.w(context), child: this,);
  SizedBox z({double height = 0.0, double width = 0.0}) => SizedBox(height: height, width: width, child: this);
  Padding pad(EdgeInsets pad) => Padding(padding: pad, child: this);
}

