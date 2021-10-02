import 'package:flutter/material.dart';
import 'package:white_space_dismiss_keyboard/shared/base_scaffold.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: 'No way to dismiss',
              ),
            ),
            const SizedBox(height: 20.0),
            MaterialButton(
              onPressed: () {},
              child: const Text('Will not dismiss'),
            ),
          ],
        ),
      ),
    );
  }
}
