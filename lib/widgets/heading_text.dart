import 'package:flutter/material.dart';

Widget headingOne({
  required String text,
  Color? textColor,
  FontWeight? fontWeight,
  double? fontSize,
}) {
  return Text(
    text,
    style: TextStyle(
      color: textColor ?? Colors.white,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontSize: fontSize ?? 30,
    ),
  );
}

Widget headingTwo({
  required String text,
  Color? textColor,
  FontWeight? fontWeight,
  double? fontSize,
}) {
  return Text(
    text,
    style: TextStyle(
      color: textColor ?? Colors.white,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontSize: fontSize ?? 25,
    ),
  );
}

Widget bodyLarge({
  required String text,
  Color? textColor,
  FontWeight? fontWeight,
  double? fontSize,
}) {
  return Text(
    text,
    style: TextStyle(
      color: textColor ?? Colors.white,
      fontWeight: fontWeight ?? FontWeight.w500,
      fontSize: fontSize ?? 18,
    ),
  );
}
