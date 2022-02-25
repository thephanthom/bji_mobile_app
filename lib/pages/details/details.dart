import 'package:bji/pages/details/question_list.dart';
import 'package:bji/utils/topic.dart';
import 'package:flutter/material.dart';

class DetailesPage extends StatelessWidget {
  const DetailesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Topic topic = ModalRoute.of(context)?.settings.arguments as Topic;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text("salom"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 5 / 3,
            child: Stack(
              alignment: AlignmentDirectional.center,
              fit: StackFit.expand,
              children: [
                Hero(
                  tag: topic.title,
                  child: Image.network(
                    topic.imageURL,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 60.0,
                  child: Text(
                    topic.title,
                    style: TextStyle(
                        fontSize: 48.0,
                        color: Colors.indigoAccent[700],
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          QuestionList(
            topic: topic,
          ),
        ],
      ),
    );
  }
}
