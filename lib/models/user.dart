class User {
  String nombre = 'jovanny';
  late int edad = 0;
  List<String>? profesiones = [];

  User({
    required nombre,
    edad,
    profesiones,
  }); //:assert(nombre !=null);
}
