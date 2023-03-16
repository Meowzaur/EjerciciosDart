// 14. Crea un ejercicio donde apliques los conocimientos adquiridos con Future, async y await.

import 'dart:math';

Future<void> imprime(int aleatorio) async {
  print('¡Empieza el juego!');
  var orden = await esperaLarga(aleatorio);
  print('$orden');
}

Future<String> esperaLarga(int aleatorio) {
  return Future.delayed(const Duration(seconds: aleatorio + 1), () => '¡Paró la música!');
}

void main() async {
  
  var rng = Random();
  int aleatorio = rng.nextInt(10) + 6;
  
  retraso(aleatorio);
  await imprime(aleatorio);
  print('¡A sentarse!');
}

void retraso(int seg) {
  for (var i = 1; i <= seg; i++) {
    Future.delayed(Duration(seconds: i), () => print('Sonando música...: $i'));
  }
}
