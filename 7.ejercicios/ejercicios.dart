void main(){
  List<int> edades=[27, 30, 24, 8, 12, 35];
  print(edades);
  edades.sort();
  var sum = edades.reduce((a,b) => a+b);
  print(edades);
  print(edades.first);
  print(edades.last);
  print(sum);

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

}
