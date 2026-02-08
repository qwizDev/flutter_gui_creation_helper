import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const int _textSizeDefaultAsInt = 24;
const double _textSizeDefaultAsDouble = 24;

class Headline extends StatelessWidget {
  const Headline({
    super.key,
    required this.text,
    this.fontSize = _textSizeDefaultAsInt,
  });

  final String text;
  final int fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(8.0),
      child: Container(
        color: Theme.of(context).colorScheme.inverseSurface,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [_HeadlineText(text, textSize: fontSize)],
        ),
      ),
    );
  }
}

class _HeadlineText extends Text {
  // static const double textSizeDefault = 24;
  static const TextStyle _defaultStyle = TextStyle(
    fontSize: (_textSizeDefaultAsDouble),
  );
  final int textSize;

  _HeadlineText(
    super.data, {
    super.key,
    super.style = _defaultStyle,
    super.textAlign = TextAlign.left,
    this.textSize = 24,
  });
}
