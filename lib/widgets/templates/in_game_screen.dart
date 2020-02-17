import 'package:decrypto/providers/encryption_key.dart';
import 'package:decrypto/widgets/molecules/in_game_actions/in_game_actions.dart';
import 'package:decrypto/widgets/organsims/word_list/word_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InGameScreen extends StatelessWidget {
  static const String routeArgs = "game/in-game";

  final List<String> wordList = ["Candyfloss", "Badge", "Funeral", "Cowboy"];

  @override
  Widget build(BuildContext context) {
    final encryptionProvider = Provider.of<EncryptionKey>(context);
/*    ChangeNotifierProvider<EncryptionKey>.value(
      
    )*/
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Turn"),
      ),
      body: Container(
        child: WordList(
          wordList: encryptionProvider.words,
        ),
      ),
      floatingActionButton: InGameActions(),
    );
  }
}
