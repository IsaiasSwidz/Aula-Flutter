import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  String _username = '';

  String get username => _username;

  void setUsername(String value) {
    _username = value;
    notifyListeners();
  }

  bool get canLogin => _username.isNotEmpty;

  // Simula o login (sem autenticação real)
  Future<void> login() async {
    if (canLogin) {
      // Aqui você poderia fazer uma chamada a uma API, mas estamos simulando
      await Future.delayed(const Duration(seconds: 1)); // Simula um delay
      notifyListeners();
    }
  }
}