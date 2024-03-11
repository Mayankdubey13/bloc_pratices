import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants/app_theme.dart';
import 'styles.dart';

class CommonWidget {
  static AppBar appBar(BuildContext context, {String? title,Widget? titleChild, PreferredSizeWidget? bottomChild, IconData? backIcon, bool? showLeadingIcon = true, double? toolbarHeight, Color? color, Color? backgroundColor, List<Widget>? actionss, bool? centerTitle, bool? backIconVisibilty, void Function()? callback}) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      titleSpacing: 0,
      automaticallyImplyLeading: backIconVisibilty ?? false,
      toolbarOpacity: 0.6,
      bottom: bottomChild,
      centerTitle: centerTitle,
      title: title != null ? Text(
            title.toString(),
            style: AppStyle.semiBoldTextStyle(
                size: 18, color: AppTheme.textBlackColor),
          ) : titleChild ?? Container(color: Colors.green),
      actions: actionss ?? [],
      backgroundColor: backgroundColor ?? AppTheme.headerDividerColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: AppTheme.whiteColor,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: AppTheme.whiteColor),
      elevation: 0.0,
    );
  }
}
