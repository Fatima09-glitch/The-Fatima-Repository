import 'package:qyiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'What is the difference between StatelessWidget and StatefulWidget in Flutter?',
    [
      'StatefulWidget has mutable state, while StatelessWidget does not',
      'StatelessWidget has mutable state, StatefulWidget does not',
      'They both have mutable state',
      'They are both UI components without differences',
    ],
  ),

  QuizQuestion(
    'What does the `build()` method do in a Flutter widget?',
    [
      'Describes how to display the widget in the UI',
      'Initializes widget state',
      'Handles user input events',
      'Connects the widget to a database',
    ],
  ),

  QuizQuestion(
    'What is the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the `setState()` method in Flutter?',
    [
      'To notify the framework that the state has changed and the UI needs to be rebuilt',
      'To create a new widget tree',
      'To navigate between screens',
      'To fetch data from an API',
    ],
  ),

  QuizQuestion(
    'Which widget is used to lay out children in a vertical direction?',
    [
      'Column',
      'Row',
      'Stack',
      'Container',
    ],
  ),

  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];