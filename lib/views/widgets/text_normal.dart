import 'package:flutter/material.dart';

/*
  普通文本
 */

class TextNormal extends StatelessWidget {
  const TextNormal({
    Key? key,
    required this.str,
    this.fontSize,
    this.fontWeight,
    this.overflow = TextOverflow.ellipsis,
    this.wordSpacing,
    this.letterSpacing,
    this.color,
    this.textAlign,
    this.textDirection,
    this.maxLines = 1,
  }) : super(key: key);
  final String str;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final double? letterSpacing;
  final double? wordSpacing;
  final Color? color;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      str,
      textAlign: textAlign,
      textDirection: textDirection,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
      ),
    );
  }
}
