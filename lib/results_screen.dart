import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({required this.selectedAnswers, super.key});

  final List<String> selectedAnswers;
  int i = 0;

  @override
  Widget build(context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...questions.map((element) {
              return Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    element.questionText,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Selected answer: ${selectedAnswers[i++]}',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Correct answer: ${element.answers[0]}',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
