import 'package:decrypto/widgets/molecules/in_game_actions/in_game_actions.dart';
import 'package:decrypto/widgets/organsims/word_list/word_list.dart';
import 'package:flutter/material.dart';

class CodeGenerationScreen extends StatelessWidget {
  static const String routeArgs = "game/code-generation";

  final List<String> wordList;

  const CodeGenerationScreen({this.wordList});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Turn"),
      ),
      body: Container(
        child: WordList(
          wordList: wordList,
        ),
      ),
      floatingActionButton: InGameActions(),
    );
  }
}
