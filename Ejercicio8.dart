// 8. Realiza una clase llamada coche y crea una instancia de esa clase, asígnale dos
// propiedades y dos métodos. Asigna valores y comprueba que los valores se asignan correctamente.

class Coche {
  var matricula;
  var color;

  bool encendido(bool estado) {
    return estado;
  }

  void repostar() {
    print("El coche reposta.");
  }
}

main(List<String> arguments) {
  var coche = new Coche();
  coche.matricula = "11AA";
  coche.color = "rojo";

  coche.encendido(true);
  coche.repostar();
}