import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/questions.dart' show QuestionsScreen;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  
  @override
  void initState() {
    activeScreen =  HomeScreen(switchScreen);
    super.initState();
  }
  
  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
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
          child: activeScreen,
        ),
      ),
    );
  }
}
