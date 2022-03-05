// ignore_for_file: must_be_immutable

import 'package:bli/utils/topic.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard(this.topic, {Key? key}) : super(key: key);

  Topic topic;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 8,
      color: Colors.indigo,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/detail', arguments: topic);
        },
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
                style: const TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
