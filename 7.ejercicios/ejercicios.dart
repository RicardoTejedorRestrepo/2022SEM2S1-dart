import 'dart:io';

void main(){

//Ejercicio numero 1

  print("\n----------Ejercicio Numero 1----------\n");

  List<int> edades=[27, 30, 24, 8, 12, 35];
  print(edades);
  edades.sort();
  var sum = edades.reduce((a,b) => a+b);
  print(edades);
  print(edades.first);
  print(edades.last);
  print(sum);

//Ejercicio numero 2

  print("\n\n----------Ejercicio Numero 2----------\n");

  List<int> a=[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  print(a.length);
  print(b.length);
  Set resultado ={};

  if (a.length < b.length){
    for(int dt_b in b){
      for(int dt_a in a){
        if(dt_b == dt_a){
          resultado.add(dt_b);
        }
      }
    }
  }else{if(b.length < a.length){
    for(int dt_a in a){
      for(int dt_b in b){
        if(dt_a == dt_b){
          resultado.add(dt_a);
        }
      }
    }
  }
  }
  print(resultado);

  final lists = [[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89],
                 [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]];

  final listaFinal = lists.fold<Set>(lists.first.toSet(), (a, b) => a.intersection(b.toSet()));
  print(listaFinal);

//Ejercicio numero 3

  print("\n\n----------Ejercicio Numero 3----------\n");

// validar si una cadena es un palindromo

  print("Escribe una palabra para saber si es palindromo o no: ");
  //String? palabra= stdin.readLineSync();
  String palabra= "a mama roma le aviva el amor a papa y a papa roma le aviva el amor a mama";
  print("Su palabra es $palabra");
  //print(palabra.split('').reversed.join());
  String auxPalabra = palabra.split('').reversed.join();
  if (palabra.replaceAll(" ", "") == auxPalabra.replaceAll(" ", "")){
    print('La palabra o frase "$palabra" es un Palindromo');
  }else{
    print('La palabra o frase "$palabra" NO es un Palindromo');
  }

//Ejercicio numero 4

print("\n\n----------Ejercicio Numero 4----------\n");

List <int> numeros = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
var numerosPares = numeros.where((element) => element.isEven);
print(numerosPares.toList());


//Ejercicio numero 5

print("\n\n----------Ejercicio Numero 5----------\n");

Persona objetoPersona = Persona(nombre: "Ricardo", apellido: "Tejedor", edad: 27);
print(objetoPersona.nombre);

var objetoArtista = Artista("Artista");
objetoArtista.herramienta = "pinturas";
print(objetoArtista.nombre);
print(objetoArtista.tipoDibujo());

var objetoIngeniero = Ingeniero("Ingeniero");
objetoIngeniero.materia = "Matematicas";
objetoIngeniero.herramienta = "computador";
print(objetoIngeniero.tipoLectura());
print(objetoIngeniero.tipoDibujo());

var objetoDoctor = Doctor("Doctor");
objetoDoctor.materia = "Anatomia";
objetoDoctor.horasDia = 1;
print(objetoDoctor.tipoLectura());
print(objetoDoctor.tipoEjercicio());

var objetoBoxeador = Boxeador("Boxeador");
objetoBoxeador.horasDia = 1;
print(objetoBoxeador.tipoBoxeador());
print(objetoBoxeador.tipoEjercicio());

}

class Persona{
  String nombre;
  String? apellido;
  int? edad;
  
  Persona({required this.nombre, required this.apellido, required this.edad});
  //Persona.completo(this.nombre);
}

class Artista extends Persona with Dibujar{
  String profecion;
  Artista(this.profecion) : super(nombre: "ricardo", apellido: "tejedor", edad: 27);
}

class Ingeniero extends Persona with Dibujar, Leer{
  String profecion;
  Ingeniero(this.profecion) : super(nombre: "ricardo", apellido: "tejedor", edad: 27);
}

class Doctor extends Persona with Ejercitarse, Leer{
  String profecion;
  Doctor(this.profecion) : super(nombre: "ricardo", apellido: "tejedor", edad: 27);
}

class Atleta extends Persona{
  String deporte;
  Atleta(this.deporte) : super(nombre: "ricardo", apellido: "tejedor", edad: 27);
}

class Boxeador extends Atleta with Ejercitarse, mBoxeador{
  Boxeador(super.deporte);
}

mixin Dibujar{
  late String herramienta;
  
  tipoDibujo(){
    if (herramienta == "pinturas"){
      return "Cuadro de pintura";
    }else{if(herramienta == "computador"){
      return "Maqueta de arquitectura";
    }
    }
  }
}

mixin Leer{
  late String materia;

  tipoLectura(){
    if(materia == "Matematicas"){
      return "Libros para Ingenieria";
    }else{if(materia == "Anatomia"){
      return "Libros de Medicina";
    }
    }
  }
}

mixin Ejercitarse{
  late int horasDia;

  tipoEjercicio(){
    if(horasDia < 3){
      return "Ejercicio Moderado";
    }else{if(horasDia >= 3){
      return "Ejercicio de Alt rendimiento";
    }
    }
  }
}

mixin mBoxeador{
  late int horasDia;

  tipoBoxeador(){
    if(horasDia < 3){
      return "Boxeador de bajo rendimiento";
    }else{if(horasDia >= 3){
      return "Boxeador de Alt rendimiento";
    }
    }
  }
}
