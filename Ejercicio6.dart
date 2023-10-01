// 6. Repite el ejercicio anterior impidiendo que se introduzca en el array valores repetidos.

void main() {
  List<int> listaInicial = [1, 1, 3, 4, 5, 6, 7, 5, 9];

  List<int> listaFinal = [];

  bool repetido;

  for (int i = 0; i < listaInicial.length; i++) {
    repetido = false;
    if (i == 0) {
      listaFinal.add(listaInicial.elementAt(i));
    } else {
      for (int j = 0; j < listaFinal.length; j++) {
        if (listaInicial.elementAt(i) == listaFinal.elementAt(j)) {
          repetido = true;
        }
      }
      if (repetido) {
        int num = listaInicial.elementAt(i);
        print("Se repitió el número $num.");
      } else {
        listaFinal.add(listaInicial.elementAt(i));
      }
    }
  }

  for (int i = 0; i < listaFinal.length; i++) {
    print(listaFinal.elementAt(i));
  }
}
