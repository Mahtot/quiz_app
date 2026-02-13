import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: HomeScreen(),
    );
  }
}
