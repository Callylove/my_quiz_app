import 'package:flutter/material.dart';

// Entry point of the Flutter application
void main() {
  runApp(const MyApp());
}

// Root widget of the application - StatelessWidget since it doesn't change
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizzler App', // App title shown in task manager
      theme: ThemeData(
        // Sets the app's color scheme based on a seed color
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        // Sets dark grey background for the entire screen
        backgroundColor: Colors.grey.shade900,
        body: SafeArea( // Ensures content doesn't overlap with system UI (notch, status bar)
            child: Padding(
              // Adds horizontal padding on left and right sides
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: QuizPage(), // The main quiz content widget
            )),
      ),
    );
  }
}

// Quiz page widget - StatefulWidget because it will handle user interactions and state changes
class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

// State class for QuizPage - handles the UI and logic
class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  List<String> questions = ['what is my name', 'My name is Callista', 'Learning about flutter events'];
  int questionNumber = 0;
  int answersNumber = 0;
  List<bool> answers = [
    false, true, true
  ];
  void nextQuestion(bool answer) {
    setState(() {
      if (answers[questionNumber] == answer) {
        scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      } else {
        scoreKeeper.add(Icon(Icons.close, color: Colors.red));
      }

      if (questionNumber < questions.length - 1) {
        questionNumber++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // Distributes children with space between them (question at top, buttons at bottom)
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // Stretches children to fill the full width of the screen
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Question section - takes up 5/6 of the available space
        Expanded(
            flex: 5, // Takes 5 parts of the available space
            child: Padding(
                padding: EdgeInsets.all(10.0), // Adds padding around the question
                child: Center( // Centers the question text
                  child: Text(
                    questions[questionNumber],
                    textAlign: TextAlign.center, // Centers text within its container
                    style: TextStyle(
                        fontSize: 30.0, // Large font size for readability
                        color: Colors.white // White text color for contrast on dark background
                    ),
                  ),
                ))),

        // True button section - takes up 1/6 of the available space
        Expanded(
            flex: 1, // Takes 1 part of the available space (smaller than question)
            child: Padding(
                padding: EdgeInsets.all(15.0), // Adds padding around the button
                child: TextButton(
                  onPressed: () {
                    // TODO: Add logic for when True button is pressed
                    nextQuestion( true);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green, // Green background for True button
                    foregroundColor: Colors.white, // White text color
                  ),
                  child: Text(
                    'True',
                    textAlign: TextAlign.center, // Centers the button text
                    style: TextStyle(fontSize: 20.0) // increase the Text size
                  ),
                ))),

        // False button section - takes up 1/6 of the available space
        Expanded(
            flex: 1, // Takes 1 part of the available space (same as True button)
            child: Padding(
                padding: EdgeInsets.all(15.0), // Adds padding around the button
                child: TextButton(
                  onPressed: () {
                    // TODO: Add logic for when False button is pressed
                    nextQuestion( false);

                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red, // Red background for False button
                    foregroundColor: Colors.white, // White text color
                  ),
                  child: Text(
                    'False',
                    textAlign: TextAlign.center, // Centers the button text
                      style: TextStyle(fontSize: 20.0) // increase the Text size

                  ),
                ))),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}