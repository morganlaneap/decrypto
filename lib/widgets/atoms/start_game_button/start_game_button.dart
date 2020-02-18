import 'package:decrypto/providers/encryption_key.dart';
import 'package:decrypto/widgets/templates/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:awesome_button/awesome_button.dart';

class StartGameButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AwesomeButton(
      blurRadius: 10.0,
      splashColor: Color.fromRGBO(255, 255, 255, .4),
      borderRadius: BorderRadius.circular(37.5),
      height: 75.0,
      width: 200.0,
      onTap: () {
        print("Insert start new game logic here");
        Provider.of<EncryptionKey>(context, listen: false).generateWords();
        Navigator.of(context).pushNamed(HomeScreen.routeArgs);
      },
      color: Colors.greenAccent,
      child: Text(
        "Start New Game",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
