// 11. Crea una clase Persona que tenga como datos: nombre, apellidos, DNI, dirección,
// CP, ciudad, fecha de nacimiento. Tenemos que definir una clase Alumno que herede
// de Persona y añada la información código del alumno, estudios (ESO, Bachillerato,
// Ciclo Formativo), curso y edad, que se calculará a partir de la fecha de nacimiento
// que se ha introducido y que es de tipo privado a la clase. Crea los métodos
// necesarios para poder crear un alumno con todos los datos de forma correcta.

class Persona {
  var nombre;
  var apellidos;
  var dni;
  var direccion;
  var cp;
  var ciudad;
  var fechaNacimiento;

  Persona(this.nombre, this.apellidos, this.dni, this.direccion, this.cp,
      this.ciudad, this.fechaNacimiento);
}

class Alumno extends Persona {
  var codigo;
  var estudios;
  var curso;
  var _edad;

  Alumno(this.codigo, this.estudios, this.curso, Persona persona)
      : this._edad = DateTime.now().year - persona.fechaNacimiento.year,
        super(null, null, null, null, null, null, null);
}

main(List<String> arguments) {}
