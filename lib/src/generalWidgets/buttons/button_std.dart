import 'package:flutter/material.dart';
import 'package:gui_creation_helper/gui_creation_helper.dart';

class ButtonStd extends StatelessWidget {
  const ButtonStd(this.onPressed, {super.key, this.labelText = "defaultText"});

  final String labelText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(WidgetDeco.marginVertStd),
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(WidgetDeco.buttonRadius),
          ),
        ),
        textStyle: TextStyle(
          fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize,
        ),
        side: BorderSide(
          // color: Colors.black,
          color: Theme.of(context).colorScheme.primary,
          width: 1,
        ),
      ),
      // onPressed: () {
      //   // addQuestions(ref);
      // },
      onPressed: onPressed,
      child: Text(labelText),
    );
  }
}
