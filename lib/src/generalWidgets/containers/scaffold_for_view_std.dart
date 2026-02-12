import 'package:flutter/material.dart';
import 'package:gui_creation_helper/src/generalWidgets/containers/not_yet_implemented.dart';

class ScaffoldForViewStandard extends StatelessWidget {
  ScaffoldForViewStandard({
    super.key,
    this.context,
    this.title = "",
    Widget? contentWidget,
    Widget? menu,
    AppBar? appBar,
  })
    // : widget = givenWidget ?? ContentWidgetNotYetImplemented(title);
    : contentWidget = contentWidget ?? Text("no contentWidget given"),
       appBarWidget = appBar,
       menuWidget = menu ?? Text("no menuWidget given");

  final String title;
  final Widget contentWidget;
  final Widget menuWidget;
  final AppBar? appBarWidget;
  final BuildContext? context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget,
      body: Row(
        children: [
          menuWidget,
          // ConstrainedBox(
          //   // constraints: boxConstraintsMainWidgetStd,
          //   // constraints: BoxConstraints.expand(),
          //   constraints: BoxConstraints(
          //     maxHeight: MediaQuery.of(context).size.height,
          //     maxWidth: MediaQuery.of(context).size.width - 200,
          //   ),
          //   child: contentWidget,
          // ),

          // LayoutBuilder(
          //   builder: (context, constraints) {
          //     return ConstrainedBox(
          //       // constraints: BoxConstraints(maxWidth: constraints.maxWidth),
          //       // constraints: BoxConstraints(maxWidth: constraints.maxWidth),
          //       constraints: BoxConstraints(maxWidth: 1300),
          //       child: contentWidget,
          //     );
          //     // return SizedBox(
          //     //   width: constraints.maxWidth,
          //     //   child: contentWidget,
          //     // );
          //     // return Expanded(child: contentWidget);
          //   },
          // ),
          Expanded(child: contentWidget),
        ],
      ),
    );
  }
}
