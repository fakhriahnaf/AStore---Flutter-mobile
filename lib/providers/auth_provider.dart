import 'package:AStore/models/user_model.dart';
import 'package:AStore/services/auth_service.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  UserModel _user;
  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    String email,
    String username,
    String password,
    String name,
  }) async {
    try {
      UserModel user = await AuthService().register(
          name: name, 
          username: username, 
          email: email, 
          password: password
        );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login({
    String email,
    String password,
  }) async {
    try {
      UserModel user = await AuthService().login( 
          email: email, 
          password: password
        );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
