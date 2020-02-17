import 'package:decrypto/providers/encryption_key.dart';
import 'package:decrypto/widgets/templates/home_screen.dart';
import 'package:decrypto/widgets/templates/in_game_screen.dart';
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
          child: InGameScreen(),
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
          InGameScreen.routeArgs: (ctx) => InGameScreen()
          // PropertyDetailsScreen.routeArgs: (ctx) => PropertyDetailsScreen(),
        },
      ),
    );
  }
}
