import 'package:flutter/material.dart';
import 'package:singleton_estados/models/user.dart';

class UserService with ChangeNotifier {
  User? _user;

  User? get user => _user;
  bool get userExist => (_user != null) ? true : false;

  set setUser(User user) {
    _user = user;
    notifyListeners();
  }

  void changeAge(int edad) {
    _user?.edad = edad;
    notifyListeners();
  }

  void removeUser() {
    _user = null;
    notifyListeners();
  }

  void addProfesion (){
    _user?.profesiones?.add('Profesion ${_user?.profesiones?.length}');
    notifyListeners();
  }
}
