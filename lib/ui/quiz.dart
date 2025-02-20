import 'package:flutter/material.dart';
import 'package:quizzapp/ui/question_screen.dart';
import 'package:quizzapp/ui/splash_screen.dart  ';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';


  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = SplashScreen(switchScreen);
    
    if (activeScreen == 'questions-screen') {
        screenWidget = QuestionScreen();
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