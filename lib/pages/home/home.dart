import 'dart:math';

import 'package:bli/pages/detail/data.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'drawer.dart';
import 'mycard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String motivation() {
      List<String> mativatsiya = [
        'yawaw yaxwi',
        'yaxwi yawaw undanam yaxwi',
        'yawa'
      ];
      final _random = Random();
      String element = mativatsiya[_random.nextInt(mativatsiya.length)];
      return element;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      backgroundColor: Colors.indigo,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'JavaScript',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
            const SizedBox(
              height: 48,
            ),
            CarouselSlider(
              items: data.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return MyCard(i);
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 300.0,
                enlargeCenterPage: true,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        motivation();
                      });
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          motivation(),
                          style: const TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w700),
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
      drawer: const MyDrawer(),
    );
  }
}
