import 'package:singleton_estados/models/user.dart';

class _UserService{
late User _user; 

  User get user => _user;

  bool get userExist=>(_user != null)? true : false;

  void loadUser(User user){
    _user = user;
  }

  void changeAge(int edad){
_user.edad = edad;
  }
}

final  userService = _UserService();