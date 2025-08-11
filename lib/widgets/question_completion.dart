import 'package:flutter/material.dart';

// Quiz Completion Dialog
class QuizCompletionDialog extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final String performanceMessage;
  final VoidCallback onRestart;
  final VoidCallback onClose;

  const QuizCompletionDialog({
    super.key,
    required this.score,
    required this.totalQuestions,
    required this.performanceMessage,
    required this.onRestart,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    final percentage = ((score / totalQuestions) * 100).round();

    return AlertDialog(
      title: const Text(
        'Quiz Completed! 🎉',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: _getScoreColor(percentage),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Text(
                  '$score / $totalQuestions',
                  style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '$percentage%',
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            performanceMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: onClose, child: const Text('Close')),
        ElevatedButton(
          onPressed: onRestart,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          child: const Text('Play Again'),
        ),
      ],
    );
  }

  Color _getScoreColor(int percentage) {
    if (percentage >= 80) return Colors.green;
    if (percentage >= 60) return Colors.orange;
    return Colors.red;
  }
}
