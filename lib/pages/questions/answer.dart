// ignore_for_file: must_be_immutable

import 'package:bji/utils/topic.dart';
import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  Answer({Key? key, required this.myQuestion}) : super(key: key);

  late Question myQuestion;

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  final List<bool> _isOpen = [false];

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 9,
      children: [
        ExpansionPanel(
          canTapOnHeader: true,
          isExpanded: _isOpen[0],
          body: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 16.0),
                child: Text(
                  widget.myQuestion.answer,
                  style: const TextStyle(fontSize: 18.0),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          headerBuilder: (context, isOpen) {
            return Padding(
              padding: const EdgeInsets.only(top: 14.0, left: 8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.label_rounded,
                    color: Colors.green[800],
                  ),
                  const Text(
                    "Javob",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            );
          },
        ),
      ],
      expansionCallback: (i, isOpen) {
        setState(() {
          _isOpen[i] = !isOpen;
        });
      },
    );
  }
}
