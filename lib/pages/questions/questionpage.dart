import 'package:bji/pages/questions/questioncard.dart';
import 'package:bji/utils/bookmark_model.dart';
import 'package:bji/utils/topic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    Question question = ModalRoute.of(context)?.settings.arguments as Question;
    return Scaffold(
      appBar: AppBar(
        title: const Text("savol page"),
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 42.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            QuestionCard(
              myQuestion: question,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return const AspectRatio(
                            aspectRatio: 2 / 1,
                            child: Text("hello"),
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
                              size: 38.0,
                              color: Colors.tealAccent[700],
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            const Text(
                              "Ishora",
                              style: TextStyle(fontSize: 20.0),
                            )
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
                          return CupertinoAlertDialog(
                              title: const Text("Test"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'Cancel');
                                  },
                                  child: const Text("yo'q"),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text("Ha"),
                                ),
                              ]);
                        },
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.wysiwyg,
                              size: 38.0,
                              color: Colors.pinkAccent[100],
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            const Text(
                              "Javob",
                              style: TextStyle(fontSize: 20.0),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage("assets/bg6.jpg"),
// fit: BoxFit.cover,
// ),
// ),
// child: Text("sa"),
// ),

// Scaffold(
// appBar: AppBar(
// title: Text("savol page"),
// ),
// body: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
// child: Column(
// children: [
// QuestionCard(
// myQuestion: question,
// ),
// SizedBox(
// height: 16,
// ),
// Answer(myQuestion: question),
// ],
// ),
// ),
// );
// }
//  }
