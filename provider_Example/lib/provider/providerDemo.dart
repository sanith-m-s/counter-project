import 'package:flutter/material.dart';

class ProviderDemo with ChangeNotifier {
  String test1 = "CodeWith";
  String value = '';

  void changeValue() {
    test1 = "Code";
    notifyListeners();
  }

  void setValue(String text) {
    value = text;
    notifyListeners();
  }
}
