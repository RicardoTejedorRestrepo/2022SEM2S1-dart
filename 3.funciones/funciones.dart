void main() {

  print(obtenerNombre('Ricardo'));
  print(obtenerNombreApellidos('Ricardo', 'Tejedor'));
  print(obtenerNombreApellidosParameter(apellidos: 'Tejedor'));

}

String obtenerNombre(String nombre){
  return 'Mi nombre es $nombre';
}

String obtenerNombreApellidos(String nombre, String apellidos){
  return 'Mi nombre es $nombre y mi apellido es $apellidos';
}

String obtenerNombreApellidosParameter(
  {String? nombre, required String apellidos, int edad = 0}){
  return 'Mi nombre es $nombre y mi apellido es $apellidos';
}

