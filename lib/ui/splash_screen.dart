import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
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
          style: TextStyle(
              fontSize: 40, color: const Color.fromARGB(255, 200, 213, 231)),
        ),
        SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: () {},
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
