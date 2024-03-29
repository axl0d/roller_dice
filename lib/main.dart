import 'package:flutter/material.dart';
import 'package:roller_dice/game_room_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Juego rodar los dados',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xff35654d),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff35654d),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        GameRoomPage.routeName: (context) => const GameRoomPage()
      },
    );
  }
}
