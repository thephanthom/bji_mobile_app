// ignore_for_file: unnecessary_const

import 'package:bji/utils/bookmark_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.indigoAccent,
      child: Builder(builder: (context) {
        return ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.indigoAccent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.bookmarks,
                        size: 36,
                        color: Colors.white70,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "Savollar",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 28.0,
                            color: Colors.white70),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Divider(
                    height: 6,
                    thickness: 4,
                    color: Colors.indigoAccent[100],
                  )
                ],
              ),
            ),
            Expanded(
              child: Consumer<BookmarkModel>(
                builder: (context, bookmark, child) {
                  return const Card(
                    color: Colors.blueAccent,
                    child: const Flexible(
                      child: const ListTile(
                        title: const Text(
                          "1-Saqlangan Savol",
                          style: const TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(2.0),
            ),
          ],
        );
      }),
    );
  }
}
