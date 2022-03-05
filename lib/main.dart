import 'package:bli/pages/answer/answer.dart';
import 'package:bli/pages/detail/detail.dart';
import 'package:bli/pages/home/home.dart';
import 'package:bli/utils/bookmark_madel.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/question_page/question.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => BookmarkModel(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/detail': (context) => const DetailPage(),
        '/question': (context) => const QuestionPage(),
        '/answer': (context) => const AnswerPage(),
      },
      theme: ThemeData(
        primaryColor: const Color(0xff000000),
        primarySwatch: Colors.indigo,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/second':
            return PageTransition(
              child: const QuestionPage(),
              type: PageTransitionType.rightToLeft,
              settings: settings,
            );
          default:
            return null;
        }
      },
    );
  }
}
