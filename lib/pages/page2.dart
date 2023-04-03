import 'package:flutter/material.dart';
import 'package:singleton_estados/models/user.dart';
import 'package:singleton_estados/services/user_service.dart';


class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pagina 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          children: [
            MaterialButton(
              color: Colors.blue,
              child: const Text('establecer usuario',  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              onPressed: (){
                final newUser = User(nombre: 'pepe', edad: 35,);
                userService.loadUser(newUser);
            }),
            MaterialButton(
              color: Colors.blue,
              child: const Text('cambiar edad',  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              onPressed: (){
                userService.changeAge(25);
                
            }),
            MaterialButton(
              color: Colors.blue,
              child: const Text('añadir profesion',  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              onPressed: (){

            }),
          ],
        )
     ),
   );
  }
}