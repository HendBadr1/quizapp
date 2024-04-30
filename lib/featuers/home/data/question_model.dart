class QuestionModel{
  String title;
  List<String> answers;
  String ? selectedAnswer;
  String correctAnswer;






  QuestionModel(
  {
    required this.correctAnswer,
    required this.selectedAnswer,
    required this.title,
    required this.answers,


}
      );
}