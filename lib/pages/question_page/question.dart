import 'dart:io';
import 'package:bli/pages/question_page/question_card.dart';
import 'package:bli/utils/bookmark_madel.dart';
import 'package:bli/utils/topic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Question question = ModalRoute.of(context)?.settings.arguments as Question;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Savol'),
        centerTitle: true,
        actions: [
          Consumer<BookmarkModel>(
            builder: (context, bookmark, child) {
              return IconButton(
                onPressed: () {
                  bookmark.bookmarks.contains(question)
                      ? bookmark.remove(question)
                      : bookmark.add(question);
                },
                icon: Icon(
                  bookmark.bookmarks.contains(question)
                      ? Icons.bookmarks
                      : Icons.bookmarks_outlined,
                  color: Colors.white,
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding:
              EdgeInsets.fromLTRB(8.0, 16.0, 8.0, Platform.isIOS ? 22.0 : 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              QuestionCard(
                myQuestion: question,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return AspectRatio(
                                aspectRatio: 2 / 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Center(
                                    child: Text(
                                      question.hint,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.analytics,
                                  color: Colors.tealAccent[700],
                                  size: 38,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text('Ishora'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          showDialog<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return MyModal(
                                  question: question,
                                );
                              });
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.wysiwyg,
                                  color: Colors.pinkAccent[100],
                                  size: 38,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text('Javob'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyModal extends StatelessWidget {
  MyModal({Key? key, required this.question}) : super(key: key);

  late Question question;
  @override
  Widget build(BuildContext context) {
    void OnCsnsel() {
      Navigator.pop(context, 'Cansel');
    }

    void onAccept() {
      Navigator.pop(context);
      Navigator.pushNamed(context, '/answer', arguments: question);
    }

    return Platform.isIOS
        ? CupertinoAlertDialog(
            title: Text("Javobni ko'rmoqchi bo'lganingizga aminmsiz ?"),
            actions: [
              TextButton(
                onPressed: OnCsnsel,
                child: Text('Yoq'),
              ),
              TextButton(
                onPressed: onAccept,
                child: Text('Ha'),
              )
            ],
          )
        : AlertDialog(
            title: Text("Javobni ko'rmoqchi bo'lganingizga aminmsiz ?"),
            actions: [
                TextButton(
                  onPressed: OnCsnsel,
                  child: Text('Yoq'),
                ),
                TextButton(
                  onPressed: onAccept,
                  child: Text('Ha'),
                ),
              ]);
  }
}
