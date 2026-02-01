import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContentWidgetNotYetImplemented extends ConsumerWidget {
  final String title;
  const ContentWidgetNotYetImplemented(this.title, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final infoString = '$title - not yet implemented!';

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text(
              infoString,
            ),
          ),
          // ElevatedButton(
          //   child: const Text("progHomeScreen"),
          //   onPressed: () => context.go('/progHomeScreen'),
          //   // goToProgHomeScreen(context);
          // ),
          // ElevatedButton(
          //   onPressed: () => context.go('/nextWidgetDesignerScreen'),
          //   child: const Text('nextWidgetDesignerScreen'),
          // ),

          // goToProgHomeScreen(BuildContext context)
        ],
      ),
    );
  }
}
