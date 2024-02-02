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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 50,
              children: [
                Image.asset('assets/dice1.png'),
                Image.asset('assets/dice2.png'),
                Image.asset('assets/dice3.png'),
              ],
            ),
            const SizedBox(height: 50),
            AnimatedButton(onTap: () {}, title: 'R O L L !'),
          ],
        ),
      ),
    );
  }
}
