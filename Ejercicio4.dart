// 4. Realiza una función que se le pase un valor y salga
// por pantalla la tabla de multiplicar de ese número.

void main() {
  int numero = 9;

  for (int i = 0; i <= 10; i++) {
    int multi = numero * i;
    print("$numero * $i = $multi");
  }
}
