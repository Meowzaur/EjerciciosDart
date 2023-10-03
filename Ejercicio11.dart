// 11. Crea una clase Persona que tenga como datos: nombre, apellidos, DNI, dirección,
// CP, ciudad, fecha de nacimiento. Tenemos que definir una clase Alumno que herede
// de Persona y añada la información código del alumno, estudios (ESO, Bachillerato,
// Ciclo Formativo), curso y edad, que se calculará a partir de la fecha de nacimiento
// que se ha introducido y que es de tipo privado a la clase. Crea los métodos
// necesarios para poder crear un alumno con todos los datos de forma correcta.

class Persona {
  String nombre;
  String apellidos;
  String dni;
  String direccion;
  int cp;
  String ciudad;
  DateTime fechaNacimiento;

  Persona(this.nombre, this.apellidos, this.dni, this.direccion, this.cp,
      this.ciudad, this.fechaNacimiento);
}

class Alumno extends Persona {
  String codigo;
  String estudios;
  String curso;
  var _edad;

  Alumno(this.codigo, this.estudios, this.curso, nombre, apellidos, dni,
      direccion, cp, ciudad, fechaNacimiento)
      : super(nombre, apellidos, dni, direccion, cp, ciudad, fechaNacimiento);

  String get getCodigo {
    return codigo;
  }

  String get getEstudios {
    return estudios;
  }

  String get getCurso {
    return curso;
  }

  String get getNombre {
    return nombre;
  }

  String get getApellidos {
    return apellidos;
  }

  String get getDni {
    return dni;
  }

  String get getDireccion {
    return direccion;
  }

  int get getCp {
    return cp;
  }

  String get getCiudad {
    return ciudad;
  }

  DateTime get getFechaNacimiento {
    return fechaNacimiento;
  }

  int get getEdad {
    return DateTime.now().year - fechaNacimiento.year;
  }
}

main(List<String> arguments) {
  var chiquillo = new Alumno("007", "DAM", "2º", "Jose", "Chiro", "1111A",
      "C/La Boca", 52356, "Si u dah", DateTime.utc(1990, 2, 3));
  String codigo = chiquillo.getCodigo;
  String nombre = chiquillo.getNombre;
  String apellido = chiquillo.getApellidos;
  int edad = chiquillo.getEdad;
  print("Alumno $codigo, $nombre $apellido, de $edad años de edad.");
}
