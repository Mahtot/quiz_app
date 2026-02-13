import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({required this.name, super.key});

  final String name;

  void startQuiz() {}

  @override
  Widget build(context) {
    return OutlinedButton(
      onPressed: startQuiz,
      style: OutlinedButton.styleFrom(foregroundColor: const Color.fromARGB(255, 238, 235, 243)),
      child: Text(name),
    );
  }
}
