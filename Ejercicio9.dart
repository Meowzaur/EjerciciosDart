// 9. A la clase coche anterior define una propiedad como privada. Realiza
// el getter y el setter para poder asignar valores a esa propiedad.

class Coche {
  var matricula;
  var color;
  var _deposito;

  set deposito(int gasolina) {
    deposito = gasolina;
  }

  int get deposito {
    return deposito;
  }

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

  var deposito = 50;
  print("Gasolina: $deposito");
}
