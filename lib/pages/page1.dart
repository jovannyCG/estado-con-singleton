import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:singleton_estados/models/user.dart';
import 'package:singleton_estados/services/user_service.dart';

class PaginaPage extends StatelessWidget {
  const PaginaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('pagina 1'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: userService.removeUser,
            icon: const Icon(Icons.logout))
        ],
      ),
      body: userService.userExist
      ?  InfotmacionUsuarios(user: userService.user)
      :const Center(child: Text('no hay usuario seleccionado'),),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushNamed(context, 'pagina2')),
    );
  }
}

class InfotmacionUsuarios extends StatelessWidget {

   final User? user;

  const InfotmacionUsuarios({super.key, required this.user}); 
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsetsDirectional.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text(
            'general',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ListTile(title: Text('nombre: ${user!.nombre}')),
           ListTile(
            title: Text('edad: ${user!.edad}'),
          ),
          const Text(
            'profesiones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
              ...?user?.profesiones?.map((profesion) =>  ListTile(title: Text(profesion)),)
              .toList()
          
         
        ],
      ),
    );
  }
}
