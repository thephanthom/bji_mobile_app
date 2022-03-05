import 'package:bli/utils/topic.dart';
import 'package:flutter/material.dart';

class AnswerPage extends StatelessWidget {
  const AnswerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Question question = ModalRoute.of(context)?.settings.arguments as Question;

    return Scaffold(
      appBar: AppBar(
        title: Text('Javob'),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
        child: ListView(
          children: [
            Text(
              question.answer,
              style: TextStyle(fontSize: 22.0),
            )
          ],
        ),
      ),
    );
  }
}
