import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzapp/data/questions.dart';
import 'package:quizzapp/ui/question_summary/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryAnswer = getSummaryData();
    final totalQuestions = questions.length;
    final correctQuestions = summaryAnswer.where((element) => element['user_answer'] == element['correct_answer']).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Good Job Socrates! Ur Wisdom is $correctQuestions of $totalQuestions", style: GoogleFonts.lato(color: Colors.white, fontSize: 30)),
            SizedBox(height: 30),
            QuestionsSummary(summaryData: summaryAnswer),
            SizedBox(height: 30),
            TextButton.icon(
              onPressed: onRestart,
              icon: Icon(Icons.refresh),
              label: Text("Restart Thinking?"),
              style: TextButton.styleFrom(foregroundColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
