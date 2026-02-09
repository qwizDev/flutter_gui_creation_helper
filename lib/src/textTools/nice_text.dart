import 'package:flutter/material.dart';

class NiceText extends Text {
  static const double _textSizeDefault = 18;
  static const Color _colorStd = Colors.black;
  static const TextStyle defaultStyle = TextStyle(fontSize: _textSizeDefault);
  static const double _textSizeMin = 6;

  const NiceText._(
    super.data, {
    super.key,
    super.style = defaultStyle,
    super.textAlign = TextAlign.left,
  });

  factory NiceText.std({
    required String text,
    double textSize = _textSizeDefault,
    Key? key,
  }) {
    // double fontSize = textSize ?? _textSizeDefault;
    double fontSizeToUse = (textSize > _textSizeMin) ? textSize : _textSizeMin;
    TextStyle style = TextStyle(fontSize: fontSizeToUse, color: _colorStd);
    return NiceText._(text, style: style, key: key);
  }

  factory NiceText.precise({
    String text = "noTextGivenYet",
    Color? color,
    double textSize = _textSizeDefault,
    Key? key,
    TextAlign? textAlign,
  }) {
    TextStyle style = TextStyle(fontSize: textSize, color: color);
    return NiceText._(text, style: style, key: key, textAlign: textAlign);
  }

  factory NiceText.primary({
    String text = "noTextGivenYet",
    double textSize = _textSizeDefault,
    Key? key,
    required BuildContext context,
  }) {
    Color color = Theme.of(context).colorScheme.primary;
    TextStyle style = TextStyle(fontSize: textSize, color: color);
    return NiceText._(text, style: style, key: key);
  }
}


// class NiceText extends Text {
//   static const double textSizeDefault = 18;
//   static const TextStyle defaultStyle = TextStyle(fontSize: textSizeDefault);
//   final int textSize;
//   final Color color;

//   const NiceText(
//     super.data, {
//     super.key,
//     this.color = Colors.black,
//     super.style = defaultStyle,
//     super.textAlign = TextAlign.left,
//     this.textSize = 18,
//   });
// }

  // NiceText.primary(this.textSize):
  //   super.style = TextStyle(fontSize: textSize,  );
  // ;
  // }

  //   NiceText.specified(super.data, {
  //     super.key,
  //     super.style =
  //     });
  // }

