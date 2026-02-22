import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({required this.selectedAnswers, super.key});

  final List<String> selectedAnswers;

  @override
  Widget build(context) {
    int correctAnswers = 0;

    // Widget checkAnswer() {
    //   for (int i = 0; i < selectedAnswers.length; i++) {
    //     if (selectedAnswers[i] == questions[i].answers[0]) {
    //       correctAnswers++;
    //       return Container();
    //     } else {
    //       return Container();
    //     }
    //   }
    // }


    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X out of Y questions correctly!', style: TextStyle(color: const Color.fromARGB(255, 225, 216, 233))),
            SizedBox(height: 30),
            Text('List of answers and questions ....', style: TextStyle(color: const Color.fromARGB(255, 225, 216, 233))),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}
