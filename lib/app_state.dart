import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _Rank = [];
  List<int> get Rank => _Rank;
  set Rank(List<int> value) {
    _Rank = value;
  }

  void addToRank(int value) {
    Rank.add(value);
  }

  void removeFromRank(int value) {
    Rank.remove(value);
  }

  void removeAtIndexFromRank(int index) {
    Rank.removeAt(index);
  }

  void updateRankAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    Rank[index] = updateFn(_Rank[index]);
  }

  void insertAtIndexInRank(int index, int value) {
    Rank.insert(index, value);
  }

  int _variable = 0;
  int get variable => _variable;
  set variable(int value) {
    _variable = value;
  }

  int _variableWeek = 0;
  int get variableWeek => _variableWeek;
  set variableWeek(int value) {
    _variableWeek = value;
  }

  int _weekNumber = 0;
  int get weekNumber => _weekNumber;
  set weekNumber(int value) {
    _weekNumber = value;
  }

  List<DocumentReference> _popularPosts = [];
  List<DocumentReference> get popularPosts => _popularPosts;
  set popularPosts(List<DocumentReference> value) {
    _popularPosts = value;
  }

  void addToPopularPosts(DocumentReference value) {
    popularPosts.add(value);
  }

  void removeFromPopularPosts(DocumentReference value) {
    popularPosts.remove(value);
  }

  void removeAtIndexFromPopularPosts(int index) {
    popularPosts.removeAt(index);
  }

  void updatePopularPostsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    popularPosts[index] = updateFn(_popularPosts[index]);
  }

  void insertAtIndexInPopularPosts(int index, DocumentReference value) {
    popularPosts.insert(index, value);
  }

  String _Coutry = 'Australia';
  String get Coutry => _Coutry;
  set Coutry(String value) {
    _Coutry = value;
  }

  bool _addpostphoto = false;
  bool get addpostphoto => _addpostphoto;
  set addpostphoto(bool value) {
    _addpostphoto = value;
  }
}
