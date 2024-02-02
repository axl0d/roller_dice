import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roller_dice/game_room_page.dart';

import 'animated_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'JUEGO RODAR LOS DADOS',
              style: GoogleFonts.bungeeSpice(
                textStyle: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            const SizedBox(height: 50),
            Image.asset('assets/dice3d.png', height: 200),
            const SizedBox(height: 50),
            AnimatedButton(
              onTap: () => Navigator.pushNamed(context, GameRoomPage.routeName),
              title: 'J U G A R',
            )
          ],
        ),
      ),
    );
  }
}
