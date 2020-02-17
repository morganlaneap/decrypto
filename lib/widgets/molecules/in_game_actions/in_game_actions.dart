import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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
            child: Icon(Icons.lock_outline),
            backgroundColor: Colors.red,
            label: 'Generate Code',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print('Encrypt')),
        SpeedDialChild(
          child: Icon(Icons.lock_open),
          backgroundColor: Colors.blue,
          label: 'Guess Code',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () => print('SECOND CHILD'),
        ),
        SpeedDialChild(
          child: Icon(Icons.list),
          backgroundColor: Colors.green,
          label: 'View Guesses',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () => print('THIRD CHILD'),
        ),
      ],
    );
  }
}
