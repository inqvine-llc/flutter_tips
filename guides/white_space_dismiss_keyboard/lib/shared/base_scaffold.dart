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
    //! Important - GestureDetector must be above the scaffold
    return GestureDetector(
      onTap: () => onWhiteSpaceTapped(context),
      child: Scaffold(
        body: GestureDetector(
          //* Will dismiss the keyboard if white space is tapped on the screen.
          onTap: () => onWhiteSpaceTapped(context),
          child: child,
        ),
      ),
    );
  }

  void onWhiteSpaceTapped(BuildContext context) {
    final FocusScopeNode scope = FocusScope.of(context);
    if (scope.hasFocus && enableAutoDismissKeyboard) {
      scope.unfocus();
    }
  }
}
