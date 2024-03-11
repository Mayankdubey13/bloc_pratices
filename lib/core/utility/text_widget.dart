import 'package:flutter/material.dart';
import 'constants/app_assets.dart';
import 'constants/app_theme.dart';


class TextWidget extends StatefulWidget {
  final double? size;
  final String data;
  final Color? color;
  final FontWeight? weight;
  final bool? italic;
  final bool? centerAlign;
  final TextDecoration? decoration;
  final String? fontFamily;
  final double? height;
  final TextOverflow? overflow;
  final int? maxlines;
  final TextStyle? style;

  const TextWidget(this.data,
      {Key? key,
      this.size = 15,
      this.color,
      this.weight,
      this.decoration,
      this.italic,
      this.centerAlign,
      this.fontFamily,
      this.height,
      this.overflow,
      this.maxlines,
      this.style})
      : super(key: key);

  @override
  TextWidgetState createState() => TextWidgetState();
}

class TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.data,
      textAlign: widget.centerAlign == null ? TextAlign.left : TextAlign.center,
      overflow: widget.overflow,
      maxLines: widget.maxlines,
      style: widget.style ??
          TextStyle(
              height: widget.height,
              fontSize: widget.size!,
              color: widget.color ?? AppTheme.textBlackColor,
              fontWeight: widget.weight ?? FontWeight.normal,
              fontFamily: AppFontsConstants.poppins,
              fontStyle:
                  widget.italic == null ? FontStyle.normal : FontStyle.italic,
              decoration: widget.decoration ?? TextDecoration.none),
    );
  }
}
