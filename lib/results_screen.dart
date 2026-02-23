import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({required this.restartQuiz ,required this.selectedAnswers, super.key});

  final List<String> selectedAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].questionText,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summary = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summary.where((data) => 
       data['user_answer'] == data['correct_answer']
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
             'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.poppins(color: const Color.fromARGB(255, 206, 167, 239), fontWeight: FontWeight.bold, fontSize: 22),
            ),

            SizedBox(height: 30),

            QuestionsSummary(summary),

            SizedBox(height: 30),

            TextButton.icon(onPressed: restartQuiz, 
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 216, 200, 242),
            ),
            icon: Icon(Icons.refresh), 
            label: Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}
