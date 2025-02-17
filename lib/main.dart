import 'package:flutter/material.dart';
import 'package:quizzapp/ui/splash_screen.dart';

void main() {
  runApp(MaterialApp(
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
        child: const SplashScreen(),
      ),
    ),
  ));
}
