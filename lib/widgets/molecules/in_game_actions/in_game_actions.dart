import 'package:decrypto/providers/encryption_key.dart';
import 'package:decrypto/widgets/templates/code_generation_screen.dart';
import 'package:decrypto/widgets/templates/guess_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InGameActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      marginRight: 18,
      marginBottom: 20,
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0),
      closeManually: false,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      tooltip: 'Speed Dial',
      heroTag: 'speed-dial-hero-tag',
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 8.0,
      shape: CircleBorder(),
      children: [
        SpeedDialChild(
            child: Icon(Icons.cached),
            backgroundColor: Colors.red,
            label: 'Generate Code',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              Provider.of<EncryptionKey>(context, listen: false).generateCode();
              Navigator.of(context).pushNamed(CodeGenerationScreen.routeArgs);
            }),
        SpeedDialChild(
          child: Icon(FontAwesomeIcons.questionCircle),
          backgroundColor: Colors.blue,
          label: 'Guess Code',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () {
            Navigator.of(context).pushNamed(GuessCodeScreen.routeArgs);
          },
        ),
        SpeedDialChild(
          child: Icon(Icons.list),
          backgroundColor: Colors.green,
          label: 'View Guesses',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () {
            print("View Guesses");
          },
        ),
      ],
    );
  }
}
