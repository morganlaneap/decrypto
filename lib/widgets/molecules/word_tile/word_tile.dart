import 'package:decrypto/widgets/atoms/word_index/word_index.dart';
import 'package:decrypto/widgets/atoms/word_key/word_key.dart';
import 'package:flutter/material.dart';

class WordTile extends StatelessWidget {
  final String word;
  final int number;

  WordTile({this.word, this.number});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.redAccent,
        child: Stack(
          children: <Widget>[
            Center(
                child: WordIndex(
              wordIndex: number.toString(),
            )),
            Center(
              child: WordKey(
                wordKey: word,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
