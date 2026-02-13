import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 52, 14, 119),
                const Color.fromARGB(255, 74, 47, 120),
              ],
            ),
          ),
          child: HomeScreen(),
        ),
      ),
    ),
  );
}
