import 'dart:math';

import 'package:control_escolar_provider/models/estudiante.dart';
import 'package:flutter/cupertino.dart';

class EstudiantesProvider with ChangeNotifier {
  final List<Estudiante> _lista = [
    Estudiante(
        id: 1,
        nombre: "Fabian",
        apellidos: "Cordero M",
        edad: 22,
        grado: 10,
        grupo: "A",
        foto: "https://img.icons8.com/dusk/64/human-head.png",
        activo: true),
    Estudiante(
        id: 2,
        nombre: "Godie",
        apellidos: "Nomeacuerdo",
        edad: 21,
        grado: 10,
        grupo: "B",
        foto: "https://img.icons8.com/dusk/64/human-head.png",
        activo: true),
    Estudiante(
        id: 3,
        nombre: "Robert",
        apellidos: "Hernandez",
        edad: 20,
        grado: 8,
        grupo: "A",
        foto: "https://img.icons8.com/dusk/64/human-head.png",
        activo: true),
    Estudiante(
        id: 4,
        nombre: "Angel",
        apellidos: "Mendez",
        edad: 12,
        grado: 2,
        grupo: "E",
        foto: "https://img.icons8.com/dusk/64/human-head.png",
        activo: true),
  ];

  List<Estudiante> _carrito = [];

  void agregarEstudiante(Estudiante p) {
    var r = Random();
    p.id = r.nextInt(43434);
    _lista.add(p);
    notifyListeners();
  }

  void agregarCarrito(Estudiante p) {
    if (_carrito.any((x) => x.id == p.id)) {
      p.activo = false;
      _carrito.firstWhere((x) => x.id == p.id).activo = true;
    } else {
      Estudiante ptemp = Estudiante(
          activo: true,
          nombre: p.nombre,
          foto: p.foto,
          id: p.id,
          apellidos: p.apellidos,
          edad: p.edad,
          grado: p.grado,
          grupo: p.grupo);
      p.activo = false;
      _carrito.add(ptemp);
    }
    notifyListeners();
  }

  void quitarCarro(Estudiante p) {
    if (_carrito.any((x) => x.id == p.id)) {
      p.activo = false;
      _lista.firstWhere((x) => x.id == p.id).activo = true;
      if (p.activo == false) {
        _carrito.remove(p);
      }
      notifyListeners();
    }
  }

  List<Estudiante> get getProductos {
    return _lista;
  }

  List<Estudiante> get getCarrito {
    return _carrito;
  }

  void pagar() {
    _carrito.clear();
    notifyListeners();
  }
}