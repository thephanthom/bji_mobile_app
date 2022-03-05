import 'package:bli/utils/topic.dart';
import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  Answer({required this.myQuestion});

  late Question myQuestion;

  //const Answer({Key? key}) : super(key: key);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  List<bool> _isOpen = [false];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionPanelList(
          elevation: 0,
          children: [
            ExpansionPanel(
              canTapOnHeader: true,
              isExpanded: _isOpen[0],
              body: Row(
                children: [
                  Text(
                    widget.myQuestion.answer,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              headerBuilder: (context, isOpen) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 16.0),
                  child: Text(
                    'Javob',
                    style: TextStyle(fontSize: 18),
                  ),
                );
              },
            ),
          ],
          expansionCallback: (i, isOpen) {
            setState(() {
              _isOpen[i] = !isOpen;
            });
          }),
    );
  }
}
