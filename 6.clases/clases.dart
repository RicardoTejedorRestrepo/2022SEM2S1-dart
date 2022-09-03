void main() {
  //Persona objetoPersona = Persona("Ricardo", "Tejedor", 27);
  Persona objetoPersona = Persona(nombre: "Ricardo", apellido: "Tejedor", edad: 27);

  Padre objetoPadre = Padre(2);
  print(objetoPadre.apellido);

var objetoTaxi = Taxi();
objetoTaxi.placa = "512";
print(objetoTaxi.placa);
print(objetoTaxi.tipoVehiculo());

if(objetoTaxi is Taxi){
  print("Si es correcto");
}else{
  print("No es correcto");
}

}

class Persona{
  String nombre;
  String? apellido;
  int? edad;
  
  //Persona(this.nombre, this.apellido, this.edad);
  Persona({required this.nombre, required this.apellido, required this.edad});
  Persona.completo(this.nombre);
}

class Padre extends Persona{
  int hijos;

  //Padre(this.hijos) : super(nombre: "ricardo", apellido: "tejedor", edad: 27);
  Padre(this.hijos) : super.completo("Ricardo");
}

abstract class Vehiculo {
  late String placa;

  bool vehiculoEncendido();
}

class Taxi extends Vehiculo with Terrestre, Acuaticos{
  @override
  bool vehiculoEncendido() {
    return true;
  }
}

mixin Terrestre{
  int? llantas;
  int? Kilometraje;

  tipoVehiculo(){
    return "Terrestre";
  }
}

mixin Acuaticos{
  int? Motores;
  int? velas;

  tipoVehiculo(){
    return "Acuatico";
  }
}
