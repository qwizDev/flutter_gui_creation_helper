import 'package:flutter/material.dart';

class OwnAppBar extends AppBar {
  // OwnAppBar({Key? key, this.backgroundColor})
  OwnAppBar({super.key, this.titleStr = "", required this.context})
      // : super(backgroundColor: Colors.amber, title: Text(titleStr));
      : super(
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: Text(titleStr));

  String titleStr;
  BuildContext context;
  // Color? backgroundColor;
  // title: Center(child: Text(title)),
}
