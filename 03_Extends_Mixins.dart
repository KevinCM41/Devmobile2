abstract class Superheroes {
  String nombre;
  int edad;

  Superheroes({required this.nombre, required this.edad});

  void luchar();
}

abstract class Extraterrestre extends Superheroes {
  String planeta;

  Extraterrestre({required String nombre, required int edad, required this.planeta})
    : super(nombre: nombre, edad: edad);

  void luchar(){
    print("Lucha contra los malos usando poderes");
  }
}

abstract class Humano extends Superheroes {
  String planeta;

  Humano({required String nombre, required int edad, required this.planeta})
    : super(nombre: nombre, edad: edad);
  
  void luchar(){
    print("Lucha contra los malos usando armas");
  }
}

mixin Volador {
  void volar() {
    print("Puede volar");
  }
}

class ligaDeLaJusticia extends Extraterrestre with Volador {
  ligaDeLaJusticia({required String nombre, required int edad, required String planeta})
    : super(nombre: nombre, edad: edad, planeta: planeta);
  void datos(){
    print("Nombre: $nombre, Edad: $edad, Planeta: $planeta");
  }
}

class Avengers extends Humano with Volador {
  Avengers({required String nombre, required int edad, required String planeta})
    : super(nombre: nombre, edad: edad, planeta: planeta);
  void datos(){
    print("Nombre: $nombre, Edad: $edad, Planeta: $planeta");
  }
}

void main() {
  final superheroe1 = ligaDeLaJusticia(nombre: "Superman", edad: 30, planeta: "Krypton");
  final superheroe2 = Avengers(nombre: "Ironman", edad: 35, planeta: "Tierra");

  superheroe1.datos();
  superheroe1.luchar();
  superheroe1.volar(); 

  superheroe2.datos();  
  superheroe2.luchar();
  superheroe2.volar(); 
}
