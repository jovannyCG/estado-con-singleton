import 'dart:async';

import 'package:singleton_estados/models/user.dart';

class _UserService{
  User _user = User(); 
  final StreamController<User> _controller = StreamController<User>.broadcast();

  User get user => _user;

  bool get userExist=>(_user != null)? true : false;

  Stream<User> get controller => _controller.stream;

  void loadUser(User user){
    _user = user;
    _controller.add(user); 
  }

  void changeAge(int edad){
_user.edad = edad;
_controller.add(_user);
  }

  dispose(){
    _controller.close();
  }
}

final  userService = _UserService();