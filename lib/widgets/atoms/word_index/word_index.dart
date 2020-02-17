import 'package:flutter/material.dart';

class WordIndex extends StatelessWidget {
  final String wordIndex;

  WordIndex({this.wordIndex});

  @override
  Widget build(BuildContext context) {
    return Text(
      wordIndex,
      style: TextStyle(
        color: Colors.red,
        fontSize: 120,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
