import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roller_dice/animated_button.dart';

class GameRoomPage extends StatelessWidget {
  const GameRoomPage({super.key});

  static String routeName = '/game_room';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: _RollerDice(),
      ),
    );
  }
}

class _RollerDice extends StatefulWidget {
  const _RollerDice();

  @override
  State<_RollerDice> createState() => _RollerDiceState();
}

class _RollerDiceState extends State<_RollerDice> {
  int dice1 = 1;
  int dice2 = 2;
  int dice3 = 3;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _roller();
    });
  }

  void _roller() {
    setState(() {
      dice1 = random(1, 6);
      dice2 = random(1, 6);
      dice3 = random(1, 6);
    });
  }

  int random(int min, int max) => min + Random().nextInt(max - min);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Wrap(
          spacing: 50,
          children: [
            Image.asset('assets/dice$dice1.png'),
            Image.asset('assets/dice$dice2.png'),
            Image.asset('assets/dice$dice3.png'),
          ],
        ),
        const SizedBox(height: 50),
        Text(
          'La suma es: ${dice1 + dice2 + dice3}',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 50),
        AnimatedButton(onTap: () => _roller(), title: 'R O D A R !'),
      ],
    );
  }
}
