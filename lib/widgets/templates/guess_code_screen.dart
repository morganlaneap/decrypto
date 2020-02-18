import 'package:flutter/material.dart';

class GuessCodeScreen extends StatelessWidget {
  static String routeArgs = 'game/guess-code';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            textAlign: TextAlign.center,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: 'Word One'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chevron_right),
        onPressed: () {},
      ),
    );
  }
}
