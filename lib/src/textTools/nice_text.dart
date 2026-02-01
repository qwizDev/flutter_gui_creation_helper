import 'package:flutter/widgets.dart';

class NiceText extends Text {
  static const double textSize = 18;
  static const TextStyle defaultStyle = TextStyle(
    fontSize: textSize,
  ); // Static-Konstante

  const NiceText(super.data,
      {super.key,
      super.style = defaultStyle,
      super.textAlign = TextAlign.left});
}
