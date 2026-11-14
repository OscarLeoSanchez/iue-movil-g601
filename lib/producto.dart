class Producto {
  final int id;
  final String nombre;
  final int precio;
  final bool disponible;

  const Producto({
    required this.id,
    required this.nombre,
    required this.precio,
    required this.disponible,
  });

  // bool en Dart, 0 o 1 en SQLite
  Map<String, Object?> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'precio': precio,
      'disponible': disponible ? 1 : 0,
    };
  }

  factory Producto.fromMap(Map<String, Object?> mapa) {
    return Producto(
      id: mapa['id'] as int,
      nombre: mapa['nombre'] as String,
      precio: mapa['precio'] as int,
      disponible: mapa['disponible'] == 1,
    );
  }
}
