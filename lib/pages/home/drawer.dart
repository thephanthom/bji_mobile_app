import 'package:bli/utils/bookmark_madel.dart';
import 'package:bli/utils/topic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  String nuqtadanKeyingiString(Category_enum c) {
    return c.toString().split('.').last;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(24), bottomRight: Radius.circular(24)),
      child: Drawer(
        child: Container(
          color: Colors.indigoAccent,
          child: Column(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.bookmarks,
                          size: 36,
                          color: Colors.indigo,
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          "Savollar ",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 28.0,
                              color: Colors.blueGrey[700]),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Divider(
                      height: 6,
                      thickness: 2,
                      color: Colors.indigoAccent[100],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Consumer<BookmarkModel>(
                  builder: (context, bookmark, child) {
                    return ListView.builder(
                      itemCount: bookmark.bookmarks.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/question',
                                  arguments: bookmark.bookmarks[index]);
                            },
                            child: Card(
                              elevation: 10,
                              color: Colors.white,
                              child: ListTile(
                                subtitle: Text(nuqtadanKeyingiString(
                                    bookmark.bookmarks[index].category)),
                                title: Text(
                                  bookmark.bookmarks[index].question,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                                // title: Text(
                                //   bookmark.bookmarks[index].question,
                                //   style: TextStyle(color: Colors.white),
                                // ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
