import 'package:flutter/material.dart';
import 'package:quizzapp/data/questions.dart';
import 'package:quizzapp/ui/question_screen.dart';
import 'package:quizzapp/ui/results_screen.dart';
import 'package:quizzapp/ui/splash_screen.dart  ';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';


  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = SplashScreen(switchScreen);
    
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswer, onRestart: restartQuiz);
    }

    return MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.indigoAccent,
              Colors.lightBlueAccent
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
          ),
        ),
        child: screenWidget,
      ),
    ),
  );
  }
}