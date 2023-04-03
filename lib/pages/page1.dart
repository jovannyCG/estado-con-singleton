import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
      ),
      body: userService.userExist
      ? const InfotmacionUsuarios()
      :const Center(child: Text('no hay usuario seleccionado'),),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushNamed(context, 'pagina2')),
    );
  }
}

class InfotmacionUsuarios extends StatelessWidget {
  const InfotmacionUsuarios({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsetsDirectional.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'general',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(title: Text('nombre: ')),
          ListTile(
            title: Text('edad: '),
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
