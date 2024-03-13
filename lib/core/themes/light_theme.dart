import 'package:amritha_ayurveda/core/themes/color_palette.dart';
import 'package:amritha_ayurveda/core/themes/extensions/color_extension.dart';
import 'package:amritha_ayurveda/core/themes/extensions/space_extension.dart';
import 'package:amritha_ayurveda/core/themes/extensions/typography_extension.dart';
import 'package:flutter/material.dart';

final _lightTheme = ThemeData(
  brightness: Brightness.light,
  extensions: [
    AppColorExtension(
      primary: AppColorPalette.green,
      secondary: Colors.white,
      text: Colors.black,
      textInverse: AppColorPalette.grey,
      textSubtle: Colors.grey,
      textSubtlest: Colors.red,
      backgroundDanger: Colors.red,
    ),
    AppSpaceExtension.fromBaseSpace(8),
    AppTypographyExtension.fromColors(
      defaultFontColor: Colors.black,
      linkColor: Colors.blue,
      dimFontColor: Colors.grey,
    )
  ],
);
