import 'package:decrypto/widgets/molecules/word_tile/word_tile.dart';
import 'package:flutter/material.dart';

class WordList extends StatelessWidget {
  final List<String> wordList;

  WordList({@required this.wordList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: wordList
          .asMap()
          .map((i, word) => MapEntry(
              i,
              Expanded(
                child: Row(
                  children: <Widget>[
                    WordTile(
                      number: i + 1,
                      word: word,
                    ),
                  ],
                ),
              )))
          .values
          .toList(),
    );
  }
}
