import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    required this.child,
    this.enableAutoDismissKeyboard = true,
    Key? key,
  }) : super(key: key);

  final bool enableAutoDismissKeyboard;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        //* Will dismiss the keyboard if white space is tapped on the screen.
        onTap: enableAutoDismissKeyboard ? () => FocusScope.of(context).unfocus() : () {},
        child: child,
      ),
    );
  }
}
