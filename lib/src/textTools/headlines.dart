import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const int _textSizeDefaultAsInt = 24;
const double _textSizeDefaultAsDouble = 24;

class Headline extends StatelessWidget {
  const Headline({
    super.key,
    required this.text,
    this.fontSize = _textSizeDefaultAsDouble,
  });

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    Color primary = Theme.of(context).colorScheme.primary;

    final TextStyle textStyle = TextStyle(fontSize: fontSize, color: primary);

    return Padding(
      padding: EdgeInsetsGeometry.all(8.0),
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [_HeadlineText(text, textStyle: textStyle, key: key)],
        ),
      ),
    );
  }
}

class _HeadlineText extends Text {
  final TextStyle textStyle;

  _HeadlineText(
    super.data, {
    super.key,
    required this.textStyle,
    super.textAlign = TextAlign.left,
  }) : super(style: textStyle);
}
