import 'package:flutter/material.dart';
import 'package:quizzapp/ui/answer_button.dart';
import 'package:quizzapp/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final currentQuestion = question[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: currentQuestion.answers[0], 
            onTap: () {}
          ),
          SizedBox(height: 10),
          AnswerButton(
            answerText: currentQuestion.answers[1], 
            onTap: () {}
          ),
          SizedBox(height: 10),
          AnswerButton(
            answerText: currentQuestion.answers[2], 
            onTap: () {}
          ),
          SizedBox(height: 10),
          AnswerButton(
            answerText: currentQuestion.answers[3],
            onTap: () {}
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
