// ignore_for_file: must_be_immutable

import 'package:bji/utils/topic.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/material.dart';

class QuestionList extends StatelessWidget {
  QuestionList({Key? key, required this.topic}) : super(key: key);
  late Topic topic;
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Expanded(
        child: ListView.builder(
          itemCount: topic.questions.length,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 800),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/question',
                            arguments: topic.questions[index]);
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.question_answer_rounded,
                            color: Colors.indigo[300],
                          ),
                          title: Text(
                            "${index + 1} - Savol",
                            style: TextStyle(
                                fontFamily: "Monospace",
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[700]),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
