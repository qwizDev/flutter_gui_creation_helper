import 'package:flutter/widgets.dart';

class NiceText extends Text {
  static const double textSize_default = 18;
  static const TextStyle defaultStyle = TextStyle(fontSize: textSize_default);
  final int textSize;

  const NiceText(
    super.data, {
    super.key,
    super.style = defaultStyle,
    super.textAlign = TextAlign.left,
    this.textSize = 18,
  });
}
