import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  final Color color;
  final double? fontSize;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? wordSpacing;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  const TitleText(
      {Key? key,
      this.text = '',
      this.color = Colors.black,
      this.fontSize,
      this.margin,
      this.padding,
      this.fontStyle,
      this.letterSpacing,
      this.wordSpacing,
      this.overflow,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(0),
      padding: padding ?? const EdgeInsets.all(0),
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.center,
        style: TextStyle(
          letterSpacing: letterSpacing ?? 0,
          wordSpacing: wordSpacing ?? 0,
          overflow: overflow ?? TextOverflow.visible,
          color: color,
          fontSize: fontSize ?? 14,
          fontStyle: fontStyle,
        ),
      ),
    );
  }
}
