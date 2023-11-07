import 'package:flutter/material.dart';

class LoginController with ChangeNotifier {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController createName = TextEditingController();
  TextEditingController createEmail = TextEditingController();
  TextEditingController createPassword = TextEditingController();
  TextEditingController confirmCreatePassword = TextEditingController();

  bool isPasswordVisible = false;
  bool showLoginForm = true;

  LoginController() {
    username.text = "";
    password.text = "";
  }

  @override
  void dispose() {
    super.dispose();
    username.dispose();
    password.dispose();
  }

  void toggleForm() {
    showLoginForm = !showLoginForm;
    notifyListeners();
  }

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }
}
