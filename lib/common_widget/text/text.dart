import 'package:flutter/material.dart';
import 'package:vkc_web_example/common_widget/color/color.dart';

Text blackText(
  String label,
  double fontSize, {
  TextAlign? textAlign,
  FontWeight? fontWeight = FontWeight.w400,
  TextOverflow? textOverflow,
}) {
  return Text(
    label,
    textAlign: textAlign,
    style: TextStyle(
        fontFamily: 'Nunito Sans',
        overflow: textOverflow,
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: fontWeight),
  );
}

Text colorText(String label,
    {TextAlign? textAlign,
    FontWeight? fontWeight = FontWeight.w400,
    TextOverflow? textOverflow,
    Color? color = AppColor.textColor,
    double? fontSize = 14}) {
  return Text(
    label,
    textAlign: textAlign,
    style: TextStyle(
        fontFamily: 'Nunito Sans',
        overflow: textOverflow,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight),
  );
}

// Text colorText1(String label,
//     {TextAlign? textAlign,
//     FontWeight? fontWeight = FontWeight.w400,
//     TextOverflow? textOverflow,
//     Color? color = const Color(0xff6E7C87)}) {
//   return Text(
//     label,
//     textAlign: textAlign,
//     style: TextStyle(
//         fontFamily: 'Inter',
//         overflow: textOverflow,
//         color: color,
//         fontSize: 14,
//         fontWeight: fontWeight),
//   );
// }

// Text normalText(String label, double fontSize,
//     {FontWeight? fontWeight = FontWeight.w500,
//     TextOverflow? textOverflow,
//     Color? color}) {
//   return Text(
//     label,
//     style: TextStyle(
//         fontFamily: 'Inter',
//         overflow: textOverflow,
//         color: color ?? AppColor.textColor1,
//         fontSize: fontSize,
//         fontWeight: fontWeight),
//   );
// }

// Text greyText(
//   String label,
//   double fontSize, {
//   TextAlign? textAlign,
//   FontWeight? fontWeight = FontWeight.w400,
//   TextOverflow? textOverflow,
// }) {
//   return Text(
//     label,
//     textAlign: textAlign,
//     style: TextStyle(
//         fontFamily: 'Inter',
//         overflow: textOverflow,
//         color: Colors.grey,
//         fontSize: fontSize,
//         fontWeight: fontWeight),
//   );
// }

// Text boldText(String label, double fontSize,
//     {FontWeight? fontWeight = FontWeight.w600,
//     Color? color = AppColor.textColor1}) {
//   return Text(
//     label,
//     textAlign: TextAlign.center,
//     style: TextStyle(
//         fontFamily: 'Inter',
//         fontWeight: fontWeight,
//         fontSize: fontSize,
//         color: color),
//   );
// }

// Text whiteText(String label,
//     {double? fontSize = 20.0,
//     FontWeight? fontWeight = FontWeight.w700,
//     TextAlign? textAlign = TextAlign.center}) {
//   return Text(
//     label,
//     textAlign: textAlign,
//     style: TextStyle(
//         fontFamily: 'Inter',
//         fontWeight: fontWeight,
//         fontSize: fontSize,
//         color: Colors.white),
//   );
// }



Text commonText2(
    String label, Color color, double font, FontWeight fontWeight) {
  return Text(
    label,
    // textScaleFactor: 1.6,
    style: TextStyle(
      height: 1.5,
      fontFamily: 'Inter',
      fontWeight: fontWeight,
      fontSize: font,
      color: color,
    ),
  );
}




