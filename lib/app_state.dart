import 'package:flutter/material.dart';

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

  String _playerName = 'Cattowan';
  String get playerName => _playerName;
  set playerName(String value) {
    _playerName = value;
  }

  int _easyScore = 0;
  int get easyScore => _easyScore;
  set easyScore(int value) {
    _easyScore = value;
  }

  int _builderScore = 0;
  int get builderScore => _builderScore;
  set builderScore(int value) {
    _builderScore = value;
  }

  String _catCard1 = 'Taste Sweetness';
  String get catCard1 => _catCard1;
  set catCard1(String value) {
    _catCard1 = value;
  }

  int _catCardRatings1 = 4;
  int get catCardRatings1 => _catCardRatings1;
  set catCardRatings1(int value) {
    _catCardRatings1 = value;
  }

  String _catCard2 = 'Third Eyelid';
  String get catCard2 => _catCard2;
  set catCard2(String value) {
    _catCard2 = value;
  }

  int _catCardRatings2 = 3;
  int get catCardRatings2 => _catCardRatings2;
  set catCardRatings2(int value) {
    _catCardRatings2 = value;
  }

  String _catCard3 = 'Pacing Gait';
  String get catCard3 => _catCard3;
  set catCard3(String value) {
    _catCard3 = value;
  }

  int _catCardRatings3 = 5;
  int get catCardRatings3 => _catCardRatings3;
  set catCardRatings3(int value) {
    _catCardRatings3 = value;
  }
}
