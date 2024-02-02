import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Roller Dice Game',
              style: GoogleFonts.bungeeSpice(
                  textStyle: Theme.of(context).textTheme.displayLarge),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('P L A Y'),
            ),
          ],
        ),
      ),
    );
  }
}
