import 'package:decrypto/widgets/molecules/word_key/word_key.dart';
import 'package:decrypto/widgets/molecules/word_text/word_text.dart';
import 'package:flutter/material.dart';

class WordRow extends StatelessWidget {
  final String word;
  final int number;

  WordRow({this.word, this.number});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(5),
        color: Colors.redAccent,
        child: Row(
          children: <Widget>[
            WordKey(
              wordKey: number.toString(),
            ),
            WordText(
              wordText: word,
            )
          ],
        ),
      ),
    );
  }
}
