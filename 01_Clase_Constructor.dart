
void main() {
  
  Persona p = new Persona('Kevin', 'Carballo', 21, 3012785259, 'carballomarrugo03@gmail.com');
  
  
  Animal a = new Animal(raza:'Bulldog', propietario:'Kevin', fechaNacimiento:'07/05/2023', vacunas:false);
  
  
}

class Persona {
  
  String nombre = '';
  String apellido = '';
  int edad = 0;
  int telefono = 0;
  String email = '';
  
  Persona(String nombre, String apellido, int edad, int telefono, String email) {
    this.nombre = nombre;
    this.apellido = apellido;
    this.edad = edad;
    this.telefono = telefono;
    this.email = email;
  }

  
}

class Animal {
  
  String raza = '';
  String propietario = '';
  String fechaNacimiento = '';
  bool vacunas = false;
  
  Animal({required this.raza, required this.propietario, required     this.fechaNacimiento, required this.vacunas}){
  print('Constructor posicional');
}
  
  @override
  String toString(){
    return 'raza:$raza,\n propietario:$propietario,\n fechaNacimiento:$fechaNacimiento,\n vacunas:$vacunas';
  }
  
}
