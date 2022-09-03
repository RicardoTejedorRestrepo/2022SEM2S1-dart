void main() {
  int var_1 = 10;
  double var_2 = 1.8;
  num var_3 = 5.2;
  num var_4 = 3.4;
  print(var_1);
  print(var_2);
  print(var_2.ceil());  //valor entero aporximado hacia arriba
  print(var_2.floor()); //valor entero aporximado hacia abajo
  print(var_2.abs());   //valor absoluto 

  //String
  print("\n\nString\n");

  String texto_1 = "Hola Mundo";
  String texto_2 = "El calculo de la suma es ${5+2+1}";
  String texto_3 = "El calculo de las variables es ${var_3 + var_4}";
  String texto_4 = texto_2 + " " + texto_3;
  String texto_5 = "texto_3 = $texto_3 y texto_2 = $texto_2";
  String texto_6 = '''CREATE TABLE table_name(
    column_1 texto,
    column_2 texto,
    column_3 texto,
    ...
  );''';

  // formato Raw 'r' antes del String sirve para mostrar el texto tal cual
  String texto_8 = r'Texto con signos especiales \n el anterior es el signo especial';

  print(texto_1);
  print(texto_2);
  print(texto_3);
  print(texto_4);
  print(texto_5);
  print(texto_6);
  print('\n');
  print(texto_8);

  //Listas

  var listas = ["Ricardo", "Sindi", "Diego"];
  var listas_2 = ["Toyota", "BMW", "Mazda", 8, true];
  List<String> listas_3 = ["Peras", "Manzanas", "Sandia"];
  var listas_4 = ["Papaya", ...listas_3];
  var listas_5;
  var listas_6 = ["uno", ...listas_2, ...?listas_5];
  print(listas);
  print(listas_2);
  listas_2.clear();
  print(listas_2);
  print(listas_4);
  print(listas_4.reversed);
  print(listas_6);

 //Set
 var set_1 = {"Ricardo", "Sindi", "Diego"};
 set_1.add("Andres");
 set_1.add("Diego");
 print(set_1);
 
 //Maps<K,V>

 var map = {'red' : 'rojo',
            'blue' : "azul"};
 print(map);
 map['green']="verde";
 print(map);

//Null Safety

//List<String>? lista_prb = null;
//List<String?> lista_prb_2 = ["uno", "dos", null];

}
