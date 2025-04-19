class QuizQuestion {
  const QuizQuestion(this.text, this.answers); //Represents a single quiz question and its possible answers.

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffleList = List.of(answers);
    shuffleList.shuffle();
    return shuffleList;
  }
  //Randomizes answer order each time to avoid memorization.
}