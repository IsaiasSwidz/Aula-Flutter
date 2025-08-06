import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  String username = '';

  void updateUsername(String value) {
    username = value;
    notifyListeners();
  }

  bool isValid() => username.isNotEmpty;
}
