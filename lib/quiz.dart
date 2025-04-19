import 'package:flutter/material.dart';
import 'package:qyiz_app/data/questions.dart';
import 'package:qyiz_app/screens/questions_screen.dart';
import 'package:qyiz_app/screens/results_screen.dart';
import 'package:qyiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key}); //UI changes based on user interaction.

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen'; //Keeps track of user answers and which screen is currently shown.

  void switchScreen() { //moves to question screen
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) { // adds answer and checks if quiz is done
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() { //clears state and restarts
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF2196F3), // Light blue
                Color(0xFF0D47A1), // Darker blue
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}