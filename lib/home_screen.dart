import 'package:flutter/material.dart';
import 'package:quiz_app/styled_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300, height: 300),
          const SizedBox(height: 80),
          const Text(
            'Know your MBTI the fun way!',
            style: TextStyle(color: Color.fromARGB(255, 220, 211, 235), fontSize: 24),
          ),
          const SizedBox(height: 20),
          StyledButton(name: 'Start Quiz'),
        ],
      ),
    );
  }
}
