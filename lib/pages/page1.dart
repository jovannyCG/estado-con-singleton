import 'package:flutter/material.dart';
import 'package:singleton_estados/services/user_service.dart';
import 'package:singleton_estados/models/user.dart';

class PaginaPage extends StatelessWidget {
  const PaginaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('pagina 1'),
          centerTitle: true,
        ),
        body: StreamBuilder(
            stream: userService.controller,
            builder: (BuildContext context, snapshot) {
              return snapshot.hasData
                  ? InfotmacionUsuarios( user: snapshot.data)
                  : const Center(child: Text('no hay informacion'));
            }),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pushNamed(context, 'pagina2')));
  }
}

class InfotmacionUsuarios extends StatelessWidget {
  final User? user;
  const InfotmacionUsuarios({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsetsDirectional.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'general',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(title: Text('nombre: ${user!.nombre}')),
          ListTile(
            title: Text('edad: ${user!.edad}'),
          ),
          Text(
            'profesiones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(title: Text('preofesion1 : ')),
          ListTile(
            title: Text('preofesion1 '),
          )
        ],
      ),
    );
  }
}
