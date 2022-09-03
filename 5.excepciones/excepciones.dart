void main() {
  try{
    String elNombre = obtenerNombre("ricardo");
    print(elNombre);
  } on FormatException catch(e){
    print("se presento una excepcion FormatException = $e");
  } on Exception catch(e){
    print("se presento una excepcion Exception = $e");
  }catch(e){
    print("se presento una excepcion general = $e");
  }
}


String obtenerNombre(String nombre){
  if(nombre == 'ricardo'){
    throw FormatException("Este nombre no esta permitido");
  }
  if(nombre == 'tejedor'){
    throw Exception("Este nombre no esta permitido");
  }
  return 'Mi nombre es $nombre';
}
