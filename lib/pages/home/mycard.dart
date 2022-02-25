import 'package:bji/utils/topic.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyCard extends StatelessWidget {
  MyCard(this.topic, {Key? key}) : super(key: key);

  Topic topic;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 8.0,
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/details', arguments: topic);
        },
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
    );
  }
}
