import 'dart:collection';
import 'package:bji/utils/topic.dart';
import 'package:flutter/cupertino.dart';

class BookmarkModel extends ChangeNotifier {
  final List<Question> _bookmarks = [];

  UnmodifiableListView<Question> get bookmarks =>
      UnmodifiableListView(_bookmarks);

  void add(Question question) {
    _bookmarks.add(question);
    notifyListeners();
  }

  void remove(Question question) {
    _bookmarks.remove(question);
    notifyListeners();
  }
}
