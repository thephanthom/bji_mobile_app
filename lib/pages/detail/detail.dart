import 'package:bli/pages/detail/question_list.dart';
import 'package:bli/utils/topic.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Topic topic = ModalRoute.of(context)?.settings.arguments as Topic;

    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 5 / 3,
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
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
                  top: 60,
                  child: Text(
                    topic.title,
                    style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          QustionList(topic: topic),
        ],
      ),
    );
  }
}
