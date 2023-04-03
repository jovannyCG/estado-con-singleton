import 'package:flutter/material.dart';


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

            }),
            MaterialButton(
              color: Colors.blue,
              child: const Text('cambiar edad',  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              onPressed: (){

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