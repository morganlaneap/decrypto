import 'package:flutter/material.dart';

class WordKey extends StatelessWidget {
  final String wordKey;

  WordKey({this.wordKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Text(
          wordKey,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
            fontSize: 120,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
