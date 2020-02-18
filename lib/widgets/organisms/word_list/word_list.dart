import 'package:decrypto/models/word.dart';
import 'package:decrypto/widgets/molecules/word_row/word_row.dart';
import 'package:flutter/material.dart';

class WordList extends StatelessWidget {
  final List<Word> words;

  WordList({@required this.words});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: words
            .asMap()
            .map((i, word) => MapEntry(
                i,
                Expanded(
                  child: Row(
                    children: <Widget>[
                      WordRow(
                        number: word.index + 1,
                        word: word.word,
                      ),
                    ],
                  ),
                )))
            .values
            .toList(),
      ),
    );
  }
}
