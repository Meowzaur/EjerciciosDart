// 10. Realiza la implementación de la clase abstracta vehículo. De esta clase heredan la
// clase motocicleta y la clase coche. Establece propiedades en cada una de las clases y
// sobreescribe alguna de ellas para que compruebes el funcionamiento de las clases en Dart.

abstract class Vehiculo {
  var matricula;
  var color;
}

class Coche extends Vehiculo {
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

class Motocicleta extends Vehiculo {
  void apoyada() {
    print("La moto no se cae.");
  }
}

main(List<String> arguments) {
  var coche = new Coche();
  coche.matricula = "11AA";
  coche.color = "rojo";

  var moto = new Motocicleta();
  moto.matricula = "22BB";
  coche.color = "negro";

  coche.encendido(true);
  coche.repostar();
  moto.apoyada();

  var deposito = 50;
  print("Gasolina: $deposito");
}
