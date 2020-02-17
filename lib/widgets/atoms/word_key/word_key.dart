import 'package:flutter/material.dart';

class WordKey extends StatelessWidget {
  final String wordKey;

  WordKey({this.wordKey});

  @override
  Widget build(BuildContext context) {
    return Text(
      wordKey,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black.withOpacity(0.5),
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
