import 'package:bji/pages/home/drawer.dart';
import 'package:bji/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'mycard.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          elevation: 0,
          // leading: IconButton(
          //   onPressed: (){
          //     Scaffold.of(context).
          //   },
          //   icon: Icon(
          //     Icons.menu,
          //     color: Colors.white,
          //   ),
          // ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Text(
                "Java Script",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                enlargeCenterPage: true,
              ),
              items: data.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return MyCard(i);
                  },
                );
              }).toList(),
            ),
          ],
        ),
        drawer: const MyDrawer());
  }
}
