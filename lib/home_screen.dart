import 'package:flutter/material.dart';
import 'package:quiz_app/styled_button.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.switchScreen, {super.key});
  
  final void Function() switchScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 300,
            color: const Color.fromARGB(168, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.leagueSpartan(
              color: Color.fromARGB(255, 220, 211, 235),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          StyledButton(name: 'Start Quiz', switchScreen: switchScreen),
        ],
      ),
    );
  }
}
