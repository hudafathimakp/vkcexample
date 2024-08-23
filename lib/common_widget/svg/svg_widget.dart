import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget svgWidget(String path,
        {double? size,
        BoxFit? value = BoxFit.scaleDown,
        BlendMode? blendMode = BlendMode.srcIn,
        Color? color}) =>
    SvgPicture.asset(
      path,
      height: size,
      width: size,
      fit: value!,
      colorFilter:
          color == null ? null : ColorFilter.mode(color, BlendMode.srcIn),

      // colorBlendMode: blendMode!,
    );
