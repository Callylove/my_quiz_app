import 'package:flutter/material.dart';

// Score Display Widget
class ScoreDisplay extends StatelessWidget {
  final List<Icon> scoreKeeper;

  const ScoreDisplay({super.key, required this.scoreKeeper});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: scoreKeeper.length > 15
            ? [
                ...scoreKeeper.take(15),
                if (scoreKeeper.length > 15)
                  Text(
                    '+${scoreKeeper.length - 15} more',
                    style: const TextStyle(color: Colors.white70),
                  ),
              ]
            : scoreKeeper,
      ),
    );
  }
}
