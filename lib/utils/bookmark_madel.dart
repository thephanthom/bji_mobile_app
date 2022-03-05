import 'dart:collection';
import 'package:bli/utils/topic.dart';
import 'package:flutter/material.dart';

class BookmarkModel extends ChangeNotifier {
  final List<Question> _bookmarks = [];

  UnmodifiableListView<Question> get bookmarks =>
      UnmodifiableListView(_bookmarks);

//int get totalCount => _bookmarks.length;

  void add(Question question) {
    _bookmarks.add(question);
    notifyListeners();
  }

  void remove(Question question) {
    _bookmarks.remove(question);
    notifyListeners();
  }
}
