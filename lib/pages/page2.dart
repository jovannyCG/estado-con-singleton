import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:singleton_estados/models/user.dart';
import 'package:singleton_estados/services/user_service.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);
    return Scaffold(
      appBar: AppBar(
        title: userService.userExist
            ? Text('Nombre: ${userService.user!.nombre}')
            : const Text('pagina 2'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              color: Colors.blue,
              child: const Text(
                'establecer usuario',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                final newUser = User(
                  nombre: 'jovanny',
                  edad: 25,
                );
                userService.setUser = newUser;
              }),
          MaterialButton(
              color: Colors.blue,
              child: const Text(
                'cambiar edad',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                userService.changeAge(30);
              }),
          MaterialButton(
              color: Colors.blue,
              child: const Text(
                'añadir profesion',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () {}),
        ],
      )),
    );
  }
}
