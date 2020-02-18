import 'package:flutter/material.dart';

class WordText extends StatelessWidget {
  final String wordText;

  WordText({this.wordText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        wordText,
        style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
