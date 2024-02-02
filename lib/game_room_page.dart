import 'package:flutter/material.dart';
import 'package:roller_dice/animated_button.dart';

class GameRoomPage extends StatelessWidget {
  const GameRoomPage({super.key});

  static String routeName = '/game_room';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Center(
        child: Column(
          children: [
            AnimatedButton(onTap: () {}, title: 'R O L L !'),
          ],
        ),
      ),
    );
  }
}
