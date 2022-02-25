// ignore_for_file: must_be_immutable

import 'package:bji/utils/topic.dart';
import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  QuestionCard({Key? key, required this.myQuestion}) : super(key: key);

  late Question myQuestion;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        myQuestion.question,
        style: TextStyle(
            fontSize: 20,
            color: Colors.blueGrey[800],
            fontWeight: FontWeight.w800),
      ),
    );
  }
}
