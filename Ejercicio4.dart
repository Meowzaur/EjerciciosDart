// 4. Realiza una función que se le pase un valor y salga
// por pantalla la tabla de multiplicar de ese número.

import 'dart:io';

void main() {
  print("Elige un número a multiplicar:");
  int numero = int.parse(stdin.readLineSync().toString());

  for (int i = 0; i <= 10; i++) {
    int multi = numero * i;
    print("$numero * $i = $multi");
  }
}
