// 7. Crea un array con los valores del 1 al 50. Crea un nuevo array que recorra
// el array anterior e introduzca en el nuevo array los números divisibles por 3.

void main() {
  List<int> numeros = [];
  List<int> divisibles = [];

  for (int i = 1; i <= 50; i++) {
    numeros.add(i);
  }

  for (int i = 0; i < numeros.length; i++) {
    if (numeros.elementAt(i) % 3 == 0) {
      divisibles.add(numeros.elementAt(i));
    }
  }

  for (int i = 0; i < divisibles.length; i++) {
    print(divisibles.elementAt(i));
  }
}
