// 12. Investiga cómo podría generarse un valor aleatorio entre 1 y 10.

import 'dart:math';

void main(List<String> arguments) {
  var rng = Random();
  for (var i = 0; i < 10; i++) {
    print(rng.nextInt(10) + 1);
  }
}
