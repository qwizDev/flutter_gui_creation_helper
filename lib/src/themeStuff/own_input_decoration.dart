import 'package:flutter/material.dart';

import '../../gui_creation_helper.dart';
import '../constants/constants_colors.dart';

class ThemeStuff {
  const ThemeStuff._();

  // static const InputDecorationTheme inputDecorationStd = InputDecorationTheme(
  //   enabledBorder: OutlineInputBorder(
  //     borderSide: BorderSide(color: chosenBlackStd, width: 1),
  //   ),
  //   focusedBorder: OutlineInputBorder(
  //     borderSide: BorderSide(color: chosenYellowHighlighted, width: 2),
  //   ),
  //   errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
  //   focusedErrorBorder: OutlineInputBorder(
  //     borderSide: BorderSide(color: Colors.redAccent, width: 2),
  //   ),
  // );

  static InputDecorationTheme inputDecorationFromColorScheme(
    ColorScheme colorScheme,
  ) {
    const double borderWidthStd = 3;
    final Color colorStd = colorScheme.primary;
    // final Color colorStd = colorScheme.secondary;
    // final Color colorStd = Colors.redAccent;

    return InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          // color: colorScheme.primary,
          color: colorStd,
          width: borderWidthStd,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        // borderSide: BorderSide(color: chosenYellowHighlighted, width: 1),
        borderSide: BorderSide(
          // color: colorScheme.primary,
          color: chosenYellowHighlighted,
          width: borderWidthStd,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colorScheme.error,
          // color: colorScheme.primary,
          // color: colorStd,
          width: borderWidthStd,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: colorScheme.surfaceContainerHigh,
        //     width: 1,
        //   ),
        // ),
        borderSide: BorderSide(
          // color: colorScheme.primary,
          color: colorStd,
          width: borderWidthStd,
        ),
      ),
    );
  }

  static TextStyle textStyleFromThemeData(
    ColorScheme colorScheme,
    ColorSchemeKey colorKey,
  ) {
    final TextStyle style;

    final colorSchemeAsMap = ColorSchemeHelper.toMap(colorScheme);

    // final Color? colForKey = colorSchemeAsMap[colorKey.name];
    final Color? colForKey = colorSchemeAsMap.entries
        .firstWhere((elem) => elem.key == colorKey)
        .value;

    style = TextStyle(color: colForKey);

    return style;
  }
}
