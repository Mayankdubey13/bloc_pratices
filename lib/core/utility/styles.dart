import 'package:flutter/material.dart';

import 'constants/app_assets.dart';

class AppStyle {
  static thinTextStyle({
    double size = 14,
    double height = 1.2,
    Color color = Colors.black,
    bool underLineNeeded = false,
  }) {
    return TextStyle(
      fontSize: size,
      height: height,
      fontFamily: AppFontsConstants.inter,
      fontWeight: FontWeight.w100,
      color: color,
      decoration:
          underLineNeeded ? TextDecoration.underline : TextDecoration.none,
    );
  }

  static normalTextStyle({
    double size = 14,
    double height = 1.2,
    Color color = Colors.black,
    bool underLineNeeded = false,
  }) {
    return TextStyle(
      fontSize: size,
      height: height,
      fontFamily: AppFontsConstants.inter,
      fontWeight: FontWeight.w400,
      color: color,
      decoration:
          underLineNeeded ? TextDecoration.underline : TextDecoration.none,
    );
  }

  static mediumTextStyle({
    double size = 14,
    double height = 1.2,
    Color color = Colors.black,
    bool underLineNeeded = false,
  }) {
    return TextStyle(
      fontSize: size,
      height: height,
      fontFamily: AppFontsConstants.inter,
      fontWeight: FontWeight.w500,
      color: color,
      decoration:
          underLineNeeded ? TextDecoration.underline : TextDecoration.none,
    );
  }

  static regularTextStyle({
    double size = 14,
    double height = 1.2,
    Color color = Colors.black,
    bool underLineNeeded = false,
  }) {
    return TextStyle(
      fontSize: size,
      fontFamily: AppFontsConstants.inter,
      fontWeight: FontWeight.w300,
      height: height,
      // overflow: TextOverflow.ellipsis,
      decoration:
          underLineNeeded ? TextDecoration.underline : TextDecoration.none,
      color: color,
    );
  }

  static semiBoldTextStyle({
    double size = 14,
    double height = 1.2,
    Color color = Colors.black,
    bool underLineNeeded = false,
  }) {
    return TextStyle(
      fontSize: size,
      height: height,
      fontFamily: AppFontsConstants.inter,
      decoration:
          underLineNeeded ? TextDecoration.underline : TextDecoration.none,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static boldTextStyle({
    double size = 14,
    double height = 1.2,
    Color color = Colors.black,
    bool underLineNeeded = false,
  }) {
    return TextStyle(
      fontSize: size,
      height: height,
      decoration: underLineNeeded ? TextDecoration.underline : TextDecoration.none,
      fontFamily: AppFontsConstants.inter,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static averageTextStyle({
    double size = 14,
    double height = 1.2,
    Color color = Colors.black,
    bool underLineNeeded = false,
  }) {
    return TextStyle(
      fontSize: size,
      height: height,
      fontFamily: AppFontsConstants.inter,
      fontWeight: FontWeight.w600,
      color: color,
      decoration:
      underLineNeeded ? TextDecoration.underline : TextDecoration.none,
    );
  }

  static TextStyle? commonTextStyle(
      double fontSize, FontWeight fontWeight, Color color) {
    return TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color);
  }
}
