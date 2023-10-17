// 6. Repite el ejercicio anterior impidiendo que se introduzca en el array valores repetidos.

import 'dart:io';

void main() {
  List<int> listaInicial = [];

  for (var i = 0; i < 10; i++) {
    int valor = i + 1;
    print("Introduzca el valor $valor.");
    int num = int.parse(stdin.readLineSync().toString());
    listaInicial.add(num);
  }

  Set<int> listaFinal = Set();

  for (var i = 0; i < listaInicial.length; i++) {
    listaFinal.add(listaInicial.elementAt(i));
  }

  print("Lista final.");
  for (int i = 0; i < listaFinal.length; i++) {
    print(listaFinal.elementAt(i));
  }
}
