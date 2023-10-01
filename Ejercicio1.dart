// 1. Crea un programa en el que declares y asignes todos los tipos predefinidos
// de variables que permite DART. Realiza operaciones matemáticas entre ellos
// y comprueba si puedes operar entre todos los tipos sin problemas.

void main() {
  int numero1 = 9;
  int numero2 = 3;
  double doble = 7.6;
  String texto = "Hola";
  bool buleano = true;
  dynamic numeroDinamico = 4;
  dynamic boolDinamico = false;

  int sumaNumeros = numero1 + numero2;
//  int sumaDobles = numero1 + doble;
//  int sumaDinamicos = numero1 + numeroDinamico;

  print("Suma int: $numero1 + $numero2 = $sumaNumeros");
  print("Suma int + doble: No funciona");
  print("Suma int + dinámico: No funciona");
}
