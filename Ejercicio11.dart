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

  String get getNombre {
    return nombre;
  }

  void set setNombre(String nombre) {
    this.nombre = nombre;
  }

  String get getApellidos {
    return apellidos;
  }

  void set setApellidos(String apellidos) {
    this.apellidos = apellidos;
  }

  String get getDni {
    return dni;
  }

  void set setDni(String dni) {
    this.dni = dni;
  }

  String get getDireccion {
    return direccion;
  }

  void set setDireccion(String direccion) {
    this.direccion = direccion;
  }

  int get getCp {
    return cp;
  }

  void set setCp(int cp) {
    this.cp = cp;
  }

  String get getCiudad {
    return ciudad;
  }

  void set setCiudad(String ciudad) {
    this.ciudad = ciudad;
  }

  DateTime get getFechaNacimiento {
    return fechaNacimiento;
  }

  void set setFechaNacimiento(DateTime fechaNacimiento) {
    this.fechaNacimiento = fechaNacimiento;
  }
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

  void set setCodigo(String codigo) {
    this.codigo = codigo;
  }

  String get getEstudios {
    return estudios;
  }

  void set setEstudios(String estudios) {
    this.estudios = estudios;
  }

  String get getCurso {
    return curso;
  }

  void set setCurso(String curso) {
    this.curso = curso;
  }

  int get getEdad {
    return DateTime.now().year - fechaNacimiento.year;
  }
}

main(List<String> arguments) {
  var chiquillo =
      new Alumno("", "", "", "", "", "", "", 0, "", DateTime.utc(0));
  chiquillo.codigo = "007";
  chiquillo.curso = "2º";
  chiquillo.estudios = "Bach";
  chiquillo.apellidos = "Apellidón";
  chiquillo.ciudad = "Ciudón";
  chiquillo.cp = 87643;
  chiquillo.direccion = "C/Callejón";
  chiquillo.dni = "12345678X";
  chiquillo.fechaNacimiento = DateTime.utc(1995, 4, 8);
  chiquillo.nombre = "Nombrón";
  String codigo = chiquillo.getCodigo;
  String nombre = chiquillo.getNombre;
  String apellido = chiquillo.getApellidos;
  int edad = chiquillo.getEdad;
  print("Alumno $codigo, $nombre $apellido, de $edad años de edad.");
}
