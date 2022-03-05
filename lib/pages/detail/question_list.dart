import 'package:bli/utils/topic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class QustionList extends StatelessWidget {
  //const QustionList({Key? key}) : super(key: key);

  QustionList({required this.topic});
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
              duration: const Duration(milliseconds: 500),
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
                            Icons.question_answer,
                            color: Colors.indigo[300],
                          ),
                          title: Text(
                            '${index + 1}- Savol',
                            style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: 'Monospace',
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[700]),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
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
