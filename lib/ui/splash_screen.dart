import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 1,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(255, 228, 249, 255),
          ),
        ),
        // Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //     color: const Color.fromARGB(255, 200, 213, 231),
        // ),
        Text(
          "Who Am I ?",
          style: GoogleFonts.oswald(
              fontSize: 40, color: const Color.fromARGB(255, 255, 255, 255)
          ),
        ),
        Text("Philosophical Quiz about Existensialism", style: GoogleFonts.lato(color: Colors.white)),
        SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white
          ),
          icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
          label: const Text("Start Quiz")
        )
      ],
    ));
  }
}
