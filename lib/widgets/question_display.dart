import 'package:flutter/material.dart';

// Question Display Widget
class QuestionDisplay extends StatelessWidget {
  final String questionText;
  final String progressText;

  const QuestionDisplay({
    super.key,
    required this.questionText,
    required this.progressText,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              progressText,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.white70,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              questionText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
