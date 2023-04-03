import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:singleton_estados/pages/page1.dart';
import 'package:singleton_estados/pages/page2.dart';
import 'package:singleton_estados/services/user_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UserService())],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'pagina1',
        routes: {
          'pagina1': (_) => const PaginaPage(),
          'pagina2': (_) => const Pagina2Page(),
        },
      ),
    );
  }
}
