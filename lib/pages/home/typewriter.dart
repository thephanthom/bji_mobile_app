import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TypeWriter extends StatefulWidget {
  const TypeWriter({Key? key}) : super(key: key);

  @override
  State<TypeWriter> createState() => _TypeWriterState();
}

class _TypeWriterState extends State<TypeWriter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "function",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.blueAccent[700],
                fontSize: 22.0,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              "Salom",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.greenAccent[700],
                fontSize: 22.0,
              ),
            ),
            Text(
              "() {",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.tealAccent[700],
                fontSize: 22.0,
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 25,
            ),
            Text(
              "const",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.indigo[700],
                fontSize: 22.0,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "data",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.blue[500],
                fontSize: 22.0,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "=",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.tealAccent[700],
                fontSize: 22.0,
              ),
            ),
            const SizedBox(
              width: 10,
              height: 100,
            ),
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.blueGrey[700],
                fontWeight: FontWeight.w700,
                fontSize: 26.0,
                fontFamily: 'Horizon',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText('"Hello World";'),
                  RotateAnimatedText('3.14;'),
                  RotateAnimatedText('true;'),
                  RotateAnimatedText('[1, 2, 3];'),
                ],
                isRepeatingAnimation: true,
                totalRepeatCount: 10,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 25.0,
            ),
            const Text(
              "return",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.purpleAccent,
                fontSize: 22.0,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              "data;",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.blue[600],
                fontSize: 22.0,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 22.0,
        ),
        Text(
          "}",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.tealAccent[700],
            fontSize: 22.0,
          ),
        ),
        const SizedBox(
          height: 140.0,
        ),
        const Center(
          child: Icon(
            Icons.arrow_circle_up_rounded,
            color: Colors.white,
            size: 64.0,
          ),
        ),
      ],
    );
  }
}
