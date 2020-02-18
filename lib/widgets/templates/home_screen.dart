import 'package:decrypto/providers/encryption_key.dart';
import 'package:decrypto/widgets/atoms/start_game_button/start_game_button.dart';
import 'package:decrypto/widgets/molecules/in_game_actions/in_game_actions.dart';
import 'package:decrypto/widgets/organisms/main_app_bar/main_app_bar.dart';
import 'package:decrypto/widgets/organisms/word_list/word_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const String routeArgs = "game/home";

  @override
  Widget build(BuildContext context) {
    var words = Provider.of<EncryptionKey>(context).words;
    return Scaffold(
      appBar: words.isNotEmpty
          ? MainAppBar.getAppBar(
              title: words.isNotEmpty ? "Decrypto" : "Start New Game",
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.refresh),
                  onPressed: () {
                    Provider.of<EncryptionKey>(context, listen: false)
                        .generateWords();
                  },
                )
              ],
            )
          : null,
      body: Container(
        child: words.isNotEmpty
            ? WordList(words: words)
            : Center(
                child: StartGameButton(),
              ),
      ),
      floatingActionButton: words.isNotEmpty ? InGameActions() : null,
    );
  }
}
