import 'package:flutter/material.dart';

class AppTheme {
  static Color textColor = hexToColor('#3B3551');
  static Color tableColor = hexToColor('#414141');
  static Color boxBorder = hexToColor('#BFBFBF');
  static Color drakborder = hexToColor('#BEBEBE');
  static Color activeColor = hexToColor('#1DA074');
  static Color borderGreyColor = hexToColor('#6F7F95');
  static Color textBlackColor = hexToColor('#3B3551');
  static Color backgroundColor = hexToColor('#FAFAFA');
  static Color lightActiveColor = hexToColor('#90D272');
  static Color containerColor = hexToColor('#1DA0741A');
  static Color yellowColor = hexToColor('#D39C0D');
  static Color bgCategory1=const Color(0xfff8644a2b);
  static Color bgCategory2=const Color(0xff28b4462b);
  static Color bgCategory3=const Color(0xff00acea2b);
  static Color customButtom2=Color(0xff113F59);

  static Color dairy = hexToColor('#00ACEA2B');
  // static const Color textBlackColor = Color(0xff000000);
  static const Color errorTextColor = Color(0xffE2192B);
  static const Color textFieldBorderColor = Color.fromRGBO(17, 52, 134, 1);
  static const Color whiteColor = Color(0xffFFFFFF);
  static const Color redColor = Color(0xffE2192B);
  static const Color borderColor = Color(0xffE6E6E6);
  static const Color lightGreyColor = Color(0xffF7F7F7);
  static const Color checkBoxBorderColor = Color(0xff707070);
  //static const Color yellowColor = Color(0xffF7B502);
  static const Color blockedColor = Color(0xffBEBEBE);
  //static const Color activeColor = Color(0xff3EB438);
  static const Color unselectedLabelColor = Color(0xffADB5BD);
  static const Color greyColor = Color(0xffDEDEDE);
  static const Color lightTextColor = Color(0xff6A6A6A);
  static const Color headerDividerColor = Color(0xffF4F4F4);
  static const Color shadowColor = Color.fromRGBO(77, 0, 0, 0.15);
  static const Color grey50Color = Color(0xE2192B0D);
  static const Color orangeColor = Color(0xffFEC431);
  static const Color dividerColor = Color(0xffF0F0F0);
  static const Color lightRedColor = Color.fromRGBO(226, 25, 43, 0.05);
  static const Color greyBoxColor = Color(0xffF2F2F2);
  static const Color couponIconColor = Color(0xffB2B2B2);
  // static const Color markReadColor = Color(0xff1D78E2);
  static Color markReadColor = hexToColor('#04509D');
  static Color markBoarderBhagwa = hexToColor('#D39C0D');
  static Color greyLocation = hexToColor('#8A8585');
  static Color checkboxBoarder = hexToColor('#C5C5C5');

  static const Color onBoardingGrey = Color(0xffBEBEBE);
  static const Color onBoardingLightGrey = Color(0xff999999);
  static const Color onBoardingMediumGrey = Color(0xff7F7F7F);
  static const Color lightYellowColor = Color(0xffFFFBE6);
  static Color starColor = hexToColor('#F0B000');
  static Color confirmColor = hexToColor('#3EB400');
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
  'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
