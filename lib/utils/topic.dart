class Topic {
  Topic(
      {required this.title,
      required this.imageURL,
      required this.description,
      required this.example,
      required this.questions});
  late String title;
  late String imageURL;
  late String description;
  late String example;
  late List<Question> questions;
}

class Question {
  Question({required this.question, required this.answer});
  late String question;
  late String answer;
}
