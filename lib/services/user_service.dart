import 'package:singleton_estados/models/user.dart';

class _UserService{
   User? _user;

  User? get user => _user;

  bool get userExist=>(_user != null)? true : false;

  void loadUser(User user){
    _user = user;
  }
}

final  userService = _UserService();