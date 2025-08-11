# Quizzler – A Simple True/False Quiz App

Quizzler is a Flutter-based mobile quiz application where users answer **True** or **False**
questions and get instant feedback via icons that show whether each answer was correct or
incorrect.  
It’s a beginner-friendly Flutter project designed to practice **state management**, **user
interaction handling**, and **basic UI layout**.

---

## Features

- 📋 Multiple questions with True/False answers
- ✅ Instant feedback with a row of green ✔ and red ✖ icons
- 📱 Responsive layout using `Expanded` and `SafeArea`
- 🎨 Custom styling with colored buttons for True and False
- 🛠 Built entirely with Flutter’s core widgets (no external UI libraries)

---

## How It Works

1. A question is displayed at the top of the screen.
2. The user taps **True** or **False**.
3. If the answer is correct, a green ✔ icon is added to the score row; if incorrect, a red ✖ icon is
   added.
4. The app automatically moves to the next question.
5. When the quiz reaches the end, the app can be extended to show a completion message or restart
   option.

---

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Android Studio, VS Code, or any IDE with Flutter support
- An emulator or physical device

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Callylove/my_quiz_app.git
2. Navigate to the project folder:
   ```bash
   cd quizzler
3. Get dependencies:
   ```bash
   flutter pub get
4. Run the app:
   ```bash
   flutter run

   
