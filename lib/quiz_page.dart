import 'package:flutter/material.dart';
import 'package:quizzler/quiz_brain.dart';
import 'widgets/answer_button.dart';
import 'widgets/progress_bar.dart';
import 'widgets/score_display.dart';
import 'widgets/question_completion.dart';
import 'widgets/question_display.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> with TickerProviderStateMixin {
  List<Icon> scoreKeeper = [];
  QuizBrain quizBrain = QuizBrain();
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleAnswer(bool userAnswer) async {
    // Animate button press
    _animationController.forward().then((_) {
      _animationController.reverse();
    });

    setState(() {
      bool isCorrect = quizBrain.checkAnswer(userAnswer);

      // Add score indicator with animation
      if (isCorrect) {
        scoreKeeper.add(const Icon(Icons.check, color: Colors.green, size: 30));
      } else {
        scoreKeeper.add(const Icon(Icons.close, color: Colors.red, size: 30));
      }
    });

    // Small delay for better UX
    await Future.delayed(const Duration(milliseconds: 300));

    setState(() {
      if (quizBrain.isFinished()) {
        _showQuizCompletedDialog();
      } else {
        quizBrain.nextQuestion();
      }
    });
  }

  void _showQuizCompletedDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return QuizCompletionDialog(
          score: quizBrain.getScore(),
          totalQuestions: quizBrain.getTotalQuestions(),
          performanceMessage: quizBrain.getPerformanceMessage(),
          onRestart: () {
            Navigator.of(context).pop();
            _resetQuiz();
          },
          onClose: () {
            Navigator.of(context).pop();
          },
        );
      },
    );
  }

  void _resetQuiz() {
    setState(() {
      quizBrain.reset();
      scoreKeeper.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Text(
          'Quizzler',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey.shade900,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _resetQuiz,
            icon: const Icon(Icons.refresh, color: Colors.white),
            tooltip: 'Reset Quiz',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              // Progress Bar
              QuizProgressBar(
                currentQuestion: quizBrain.getCurrentQuestionNumber(),
                totalQuestions: quizBrain.getTotalQuestions(),
              ),

              // Question Display - Takes up available space
              Expanded(
                flex: 5,
                child: QuestionDisplay(
                  questionText: quizBrain.getQuestionText(),
                  progressText: quizBrain.getProgressText(),
                ),
              ),

              // Answer Buttons with Animation - Fixed height
              AnimatedBuilder(
                animation: _scaleAnimation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _scaleAnimation.value,
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // KEY FIX: Use min size
                      children: [
                        // True Button
                        Container(
                          width: double.infinity,
                          height: 60, // Fixed height instead of Expanded
                          margin: const EdgeInsets.all(15.0),
                          child: AnswerButton(
                            text: 'True',
                            backgroundColor: Colors.green,
                            onPressed: () => _handleAnswer(true),
                          ),
                        ),
                        // False Button
                        Container(
                          width: double.infinity,
                          height: 60, // Fixed height instead of Expanded
                          margin: const EdgeInsets.all(15.0),
                          child: AnswerButton(
                            text: 'False',
                            backgroundColor: Colors.red,
                            onPressed: () => _handleAnswer(false),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),

              // Score Display
              ScoreDisplay(scoreKeeper: scoreKeeper),

              // Current Score Info
              Container(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Score: ${quizBrain.getScore()}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${quizBrain.getScorePercentage().toStringAsFixed(1)}%',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
