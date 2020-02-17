import 'package:decrypto/widgets/atoms/start_game_button/start_game_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: StartGameButton(),
      ),
    );
  }
}
