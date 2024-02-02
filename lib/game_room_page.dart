import 'package:flutter/material.dart';

class GameRoomPage extends StatelessWidget {
  const GameRoomPage({super.key});

  static String routeName = '/game_room';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff35654d),
      ),
      backgroundColor: const Color(0xff35654d),
      body: Column(),
    );
  }
}
