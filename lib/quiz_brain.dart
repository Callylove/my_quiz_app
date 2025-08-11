import 'question.dart';
import 'question_data.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _score = 0;
  late List<Question> _questionBank;

  QuizBrain() {
    _questionBank = QuestionData.getQuestions();
    _shuffleQuestions(); // Shuffle questions for variety
  }

  // Shuffle questions to provide different quiz experience each time
  void _shuffleQuestions() {
    _questionBank.shuffle();
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool checkAnswer(bool userAnswer) {
    bool correctAnswer = getCorrectAnswer();
    if (userAnswer == correctAnswer) {
      _score++;
      return true;
    }
    return false;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
    _score = 0;
    _shuffleQuestions(); // Shuffle again for new quiz
  }

  int getCurrentQuestionNumber() {
    return _questionNumber + 1; // +1 for human-friendly numbering
  }

  int getTotalQuestions() {
    return _questionBank.length;
  }

  int getScore() {
    return _score;
  }

  double getScorePercentage() {
    if (_questionNumber == 0) return 0.0;
    return (_score / (_questionNumber + 1)) * 100;
  }

  String getProgressText() {
    return 'Question ${getCurrentQuestionNumber()} of ${getTotalQuestions()}';
  }

  // Get performance message based on score percentage
  String getPerformanceMessage() {
    double percentage = (_score / _questionBank.length) * 100;

    if (percentage >= 90) {
      return 'Excellent! You\'re a quiz master! 🏆';
    } else if (percentage >= 80) {
      return 'Great job! Well done! 🎉';
    } else if (percentage >= 70) {
      return 'Good work! Keep it up! 👍';
    } else if (percentage >= 60) {
      return 'Not bad! Room for improvement! 📚';
    } else {
      return 'Keep studying and try again! 💪';
    }
  }
}
