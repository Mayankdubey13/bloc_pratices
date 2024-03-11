import 'package:flutter/material.dart';

/// [Space] used to add space between the widgets
/// for Height used h and for width use w with size
abstract class Space {
  static double h(BuildContext context) => MediaQuery.sizeOf(context).height;
  static double w(BuildContext context) => MediaQuery.sizeOf(context).width;
  static double padBottom(BuildContext context) => MediaQuery.of(context).viewPadding.bottom;
  static double insetsBottom(BuildContext context) => MediaQuery.of(context).viewInsets.bottom;
  static double insetsTop(BuildContext context) => MediaQuery.of(context).viewInsets.top;
  static double padTop(BuildContext context) => MediaQuery.of(context).viewPadding.top;
  static SizedBox safeTop(BuildContext context) => SizedBox(height: padBottom(context),);
  static SizedBox safeBottom(BuildContext context) => SizedBox(height: padBottom(context),);
  static const SizedBox z = SizedBox.shrink();
  static const Spacer f = Spacer();
  static const SizedBox h4 = SizedBox(height: 4);
  static const SizedBox h5 = SizedBox(height: 5);
  static const SizedBox h6 = SizedBox(height: 6);
  static const SizedBox h8 = SizedBox(height: 8);
  static const SizedBox h10 = SizedBox(height: 10);
  static const SizedBox h12 = SizedBox(height: 12);
  static const SizedBox h15 = SizedBox(height: 15);
  static const SizedBox h16 = SizedBox(height: 16);
  static const SizedBox h20 = SizedBox(height: 20);
  static const SizedBox h24 = SizedBox(height: 24);
  static const SizedBox h30 = SizedBox(height: 30);
  static const SizedBox h40 = SizedBox(height: 40);
  static const SizedBox h50 = SizedBox(height: 50);
  static const SizedBox w4 = SizedBox(width: 4);
  static const SizedBox w5 = SizedBox(width: 5);
  static const SizedBox w8 = SizedBox(width: 8);
  static const SizedBox w10 = SizedBox(width: 10);
  static const SizedBox w12 = SizedBox(width: 12);
  static const SizedBox w16 = SizedBox(width: 16);
  static const SizedBox w20 = SizedBox(width: 20);
  static const SizedBox w25 = SizedBox(width: 20);
  static const SizedBox w30 = SizedBox(width: 30);
  static const SizedBox w40 = SizedBox(width: 40);
  static const SizedBox w50 = SizedBox(width: 50);
}


/// --------------- [AppPadding] Use to add padding as well as margin ---------------------------- //
abstract class AppPadding {
  static const EdgeInsets z = EdgeInsets.zero;
  static const EdgeInsets padA4 = EdgeInsets.all(4);
  static const EdgeInsets padL5 = EdgeInsets.only(left: 5);
  static const EdgeInsets padL8 = EdgeInsets.only(left: 8);
  static const EdgeInsets padL10 = EdgeInsets.only(left: 10);
  static const EdgeInsets padR5 = EdgeInsets.only(right: 5);
  static const EdgeInsets padR8 = EdgeInsets.only(right: 8);
  static const EdgeInsets padR10 = EdgeInsets.only(right: 10);
  static const EdgeInsets padA5 = EdgeInsets.all(5);
  static const EdgeInsets padA8 = EdgeInsets.all(8);
  static const EdgeInsets padA10 = EdgeInsets.all(10);
  static const EdgeInsets padA15 = EdgeInsets.all(15);
  static const EdgeInsets padA16 = EdgeInsets.all(16);
  static const EdgeInsets padA20 = EdgeInsets.all(20);
  static EdgeInsets padA(val) => EdgeInsets.all(val);
  static const EdgeInsets padSV5 = EdgeInsets.symmetric(vertical: 5);
  static const EdgeInsets padSV10 = EdgeInsets.symmetric(vertical: 10);
  static const EdgeInsets padSH5 = EdgeInsets.symmetric(horizontal: 5);
  static const EdgeInsets padSH10 = EdgeInsets.symmetric(horizontal: 10);
  static const EdgeInsets padSV20 = EdgeInsets.symmetric(vertical: 20);
  static const EdgeInsets padSH20 = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets padSV10H20 = EdgeInsets.symmetric(vertical: 10, horizontal: 20);
  static const EdgeInsets padSV30H20 = EdgeInsets.symmetric(vertical: 30, horizontal: 20);
  static const EdgeInsets padSV20H10 = EdgeInsets.symmetric(vertical: 20, horizontal: 10);
}

/// --------------- [CircularBorderRadius] Use to add circular border radius ---------------------------- //
abstract class CircularBorderRadius {
  static BorderRadius z = BorderRadius.zero;
  static BorderRadius b5 = BorderRadius.circular(5);
  static BorderRadius b8 = BorderRadius.circular(8);
  static BorderRadius b10 = BorderRadius.circular(10);
  static BorderRadius b12 = BorderRadius.circular(12);
  static BorderRadius b15 = BorderRadius.circular(15);
  static BorderRadius b20 = BorderRadius.circular(20);
  static BorderRadius inf = BorderRadius.circular(1000);
}
