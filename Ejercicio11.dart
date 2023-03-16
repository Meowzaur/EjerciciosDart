// 11. Realiza en la clase vehículo un mixin. Para ello, realiza varias clases en las que
// tengan determinadas propiedades. Por ejemplo, un vehículo puede ser una clase abstracta,
// donde heredan: patinetes, bicicletas, motocicletas, coche, camión. Pueden tener una serie
// de características, como remolque, llevar más de una persona, número de ruedas, eléctrico…


abstract class Vehiculo {
  var matricula;
  var color;
}

abstract class Remolque {
  void remolque(){
    print("Tengo remolque.");
  }
}

abstract class Individual {
  void individual(){
    print("Solo puede ir una persona.");
  }
}

abstract class MasDeDosRuedas {
  void muchasRuedas(){
    print("Tengo más de dos ruedas.");
  }
}

abstract class Electrico {
  void electrico(){
    print("Soy eléctrico.");
  }
}

class Coche extends Vehiculo with Remolque, MasDeDosRuedas, Electrico {
  
}

class Motocicleta extends Vehiculo with Individual, MasDeDosRuedas {
  
}

class Camion extends Vehiculo with Remolque, MasDeDosRuedas {
  
}

class Bicicleta extends Vehiculo with Individual, Electrico {
  
}

class Patinete extends Vehiculo with Individual, Electrico {
  
}


main(List<String> arguments) {
  var coche = new Coche();
  var moto = new Motocicleta();
  var camion = new Camion();
  var bici = new Bicicleta();

  coche.remolque();
  moto.individual();
  camion.muchasRuedas();
  bici.electrico();
  
}
