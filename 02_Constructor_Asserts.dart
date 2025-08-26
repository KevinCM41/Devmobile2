void main() {
  Persona p = new Persona('Kevin', 'Carballo', 21);
  print(p);

  final Map<String, dynamic> ApiData = {
    'nombre': 'Kevin2',
    'apellido': 'Carballo2',
    'edad': 25,
  };

  final p2 = Persona.ApiData(ApiData);
  print(p2);

  //Assert
  assert(p.edad >= 18, "Debe ser mayor de edad");
  print("Es mayor de edad");
}

class Persona {
  String nombre = '';
  String apellido = '';
  int edad = 0;

  //Constructor normal
  Persona(String nombre, String apellido, int edad) {
    this.nombre = nombre;
    this.apellido = apellido;
    this.edad = edad;
  }
  //Constructor personalizado
  Persona.ApiData(Map<String, dynamic> data)
    : nombre = data['nombre'] ?? 'No se encontró un nombre',
      apellido = data['apellido'] ?? 'No se encontró un apellido',
      edad = data['edad'] ?? 'No se encontró una edad';

  //Sobreescribir
  @override
  String toString() {
    return 'Datos: \nnombre:$nombre, \napellido:$apellido, \nedad:$edad';
  }
}
