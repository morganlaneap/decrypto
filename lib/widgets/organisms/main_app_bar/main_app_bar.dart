import 'package:flutter/material.dart';

class MainAppBar {
  static getAppBar({@required String title, List<Widget> actions}) {
    return AppBar(
      actions: actions,
      backgroundColor: Colors.redAccent,
      title: Text(title),
    );
  }
}
