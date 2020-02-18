import 'package:decrypto/providers/encryption_key.dart';
import 'package:decrypto/widgets/templates/code_generation_screen.dart';
import 'package:decrypto/widgets/templates/guess_code_screen.dart';
import 'package:decrypto/widgets/templates/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => EncryptionKey(),
        ),
        // ChangeNotifierProvider(
        //   create: (_) => HomeScreen(),
        // ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          accentColor: Colors.white,
          primarySwatch: Colors.green,
        ),
        home: HomeScreen(),
        routes: {
          HomeScreen.routeArgs: (ctx) => HomeScreen(),
          CodeGenerationScreen.routeArgs: (ctx) => CodeGenerationScreen(),
          GuessCodeScreen.routeArgs: (ctx) => GuessCodeScreen()
        },
      ),
    );
  }
}
