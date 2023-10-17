// 10. Realiza la implementación de la clase abstracta vehículo. De esta clase heredan la
// clase motocicleta y la clase coche. Establece propiedades en cada una de las clases y
// sobreescribe alguna de ellas para que compruebes el funcionamiento de las clases en Dart.

abstract class Vehiculo {
  var matricula;
  var color;

  String get getMatricula {
    return matricula;
  }

  String get getColor {
    return color;
  }
}

class Coche extends Vehiculo {
  var _deposito;

  Coche(this._deposito) : super();

  set setDeposito(int nuevoDeposito) => _deposito = nuevoDeposito;

  int get getDeposito => _deposito;

  bool encendido(bool estado) {
    return estado;
  }

  void repostar() {
    print("El coche reposta.");
  }
}

class Motocicleta extends Vehiculo {
  Motocicleta() : super();

  void apoyada() {
    print("La moto no se cae.");
  }
}

main(List<String> arguments) {
  var deposito = 50;

  var coche = new Coche(deposito);
  coche.matricula = "11AA";
  coche.color = "rojo";

  var moto = new Motocicleta();
  moto.matricula = "22BB";
  coche.color = "negro";

  coche.encendido(true);
  coche.repostar();
  moto.apoyada();

  print("Gasolina: ");
  print(coche.getDeposito);
}
