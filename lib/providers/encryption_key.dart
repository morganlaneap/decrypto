import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:random_words/random_words.dart';

class EncryptionKey with ChangeNotifier {
  List<String> words = new List<String>();

  generateWords() {
    words.clear();
    generateNoun()
        .take(4)
        .forEach((wordNoun) => words.add(wordNoun.asCapitalized));
    notifyListeners();
  }
}
