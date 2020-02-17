import 'package:decrypto/providers/encryption_key.dart';
import 'package:decrypto/widgets/templates/in_game_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartGameButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        print("Insert start new game logic here");
        Provider.of<EncryptionKey>(context, listen: false).generateWords();
        Navigator.of(context).pushNamed(InGameScreen.routeArgs);
      },
      child: Text('Start New Game'),
    );
  }
}
