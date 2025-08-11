import 'package:flutter/material.dart';

// Progress Bar Widget
class QuizProgressBar extends StatelessWidget {
  final int currentQuestion;
  final int totalQuestions;

  const QuizProgressBar({
    super.key,
    required this.currentQuestion,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    final progress = currentQuestion / totalQuestions;

    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.white30,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
            minHeight: 8,
          ),
          const SizedBox(height: 8),
          Text(
            'Progress: ${(progress * 100).round()}%',
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
