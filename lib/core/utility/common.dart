import 'package:flutter/material.dart';
import 'constants/app_theme.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}


// class CustomToast {
//   static void show(BuildContext context, String message, Color borderColor) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         backgroundColor: AppColors.chineseGold, // Make background transparent
//         elevation: 0.0, // Remove elevation
//         content: Container(
//           padding: const EdgeInsets.all(16.0),
//           decoration: BoxDecoration(
//             color: AppColors.chineseGold,
//             borderRadius: BorderRadius.circular(8.0),
//             border: Border.all(color: borderColor, width: 1.0),
//           ),
//           child: Text(message, style: TextStyles.poppinsSemiBold(14, AppColors.whiteColor),),
//         ),
//       ),
//     );
//   }
// }

Widget thickDivider() {
  return Container(
    height: 4.5,
    decoration: const BoxDecoration(
      color: AppTheme.dividerColor,
      border: Border(top: BorderSide(color: AppTheme.greyColor, width: 1)),
    ),
  );
}


void popDialog(BuildContext context) {
  Navigator.of(context).pop();
}

String getUSFormatted(String number) {
  var formattedNumber = number.replaceAllMapped(
      RegExp(r"(\d{3})(\d{3})(\d+)"), (Match m) => "(${m[1]}) ${m[2]}-${m[3]}");
  return formattedNumber;
}

