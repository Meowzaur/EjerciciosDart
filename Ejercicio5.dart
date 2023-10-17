// 5. Crea un programa que reciba una lista de números por teclado
// y los introduzca en un array. Visualiza los resultados.

import 'dart:io';

void main() {
  print("Introduzca el primer valor.");
  int num1 = int.parse(stdin.readLineSync().toString());

  print("Introduzca el segundo valor.");
  int num2 = int.parse(stdin.readLineSync().toString());

  print("Introduzca el tercer valor.");
  int num3 = int.parse(stdin.readLineSync().toString());

  List<int> lista = [];

  lista.add(num1);
  lista.add(num2);
  lista.add(num3);

  print("Lista de valores.");
  for (int i = 0; i < lista.length; i++) {
    print(lista.elementAt(i));
  }
}
