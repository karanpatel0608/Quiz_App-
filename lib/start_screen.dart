import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png",
              width: 300, color: const Color.fromARGB(150, 255, 255, 255)),
          //Below approach for Transparent Image is not recommended
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     "assets/images/quiz-logo.png",
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 50), //added as a spacer between text and image
          Text(
            'Introduction to Cognitive Psychology (NPTEL) Assignment 10',
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 24),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
            icon: const Icon(Icons.play_arrow),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}
