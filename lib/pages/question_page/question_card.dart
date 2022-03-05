import 'package:bli/utils/topic.dart';
import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  //const QuestionCard({ Key? key }) : super(key: key);

  QuestionCard({required this.myQuestion});

  late Question myQuestion;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          myQuestion.question,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
