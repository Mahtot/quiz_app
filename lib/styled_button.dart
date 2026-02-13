import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({required this.name, required this.switchScreen, super.key});

  final String name;
  final void Function() switchScreen;

  

  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: switchScreen,
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 238, 235, 243),
      ),
      icon: Icon(Icons.arrow_right_alt),
      label: Text(name, style: TextStyle(fontSize: 18)),
    );
  }
}
