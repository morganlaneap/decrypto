import 'package:decrypto/providers/encryption_key.dart';
import 'package:decrypto/widgets/organisms/word_list/word_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CodeGenerationScreen extends StatelessWidget {
  static const String routeArgs = "game/code-generation";

  @override
  Widget build(BuildContext context) {
    var words = Provider.of<EncryptionKey>(context).filteredWords;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Back to Words"),
      ),
      body: Container(child: WordList(words: words)),
    );
  }
}
