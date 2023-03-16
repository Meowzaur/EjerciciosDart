// 5. Crea un programa que reciba una lista de números por teclado
// y los introduzca en un array. Visualiza los resultados.

void main() {

  int num1 = 1;
  int num2 = 2;
  int num3 = 3;
  List<int> lista = [];
  
  lista.add(num1);
  lista.add(num2);
  lista.add(num3);

  for (int i = 0; i < lista.length; i++) {
    print (lista.elementAt(i));
  }
  
}
