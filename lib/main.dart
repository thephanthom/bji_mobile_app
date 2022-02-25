import 'package:bji/utils/bookmark_model.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'pages/details/details.dart';
import 'pages/home/home.dart';
import 'pages/questions/questionpage.dart';

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
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/details': (context) => const DetailesPage(),
      },
      theme: ThemeData(primarySwatch: Colors.indigo),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/question':
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
