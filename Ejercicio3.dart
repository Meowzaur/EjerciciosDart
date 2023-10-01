// 3. Intenta concatenar un String con algunos valores enteros. Si no puedes
// realizarlo directamente, busca la forma en la que puedes realizarlo.

void main() {
  String texto = "cosas";
  int numero = 9;
  String concat = numero.toString() + " " + texto;

  print("$concat");
}
