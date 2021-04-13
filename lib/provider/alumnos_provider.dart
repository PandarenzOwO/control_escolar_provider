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
        nombre: "J. Diego",
        apellidos: "Parra M.",
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

  List<Estudiante> _bajas = [];

  void agregarEstudiante(Estudiante p) {
    var r = Random();
    p.id = r.nextInt(43434);
    p.foto = "https://img.icons8.com/dusk/64/human-head.png";
    _lista.add(p);
    notifyListeners();
  }

  void mandarDeBaja(Estudiante p) {
    if (_bajas.any((x) => x.id == p.id)) {
      p.activo = false;
      _bajas.firstWhere((x) => x.id == p.id).activo = true;
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
      _bajas.add(ptemp);
    }
    notifyListeners();
  }

  void reintegrarALaLista(Estudiante p) {
    if (_bajas.any((x) => x.id == p.id)) {
      p.activo = false;
      _lista.firstWhere((x) => x.id == p.id).activo = true;
      if (p.activo == false) {
        _bajas.remove(p);
      }
      notifyListeners();
    }
  }

  List<Estudiante> get getLista {
    return _lista;
  }

  List<Estudiante> get getBajas {
    return _bajas;
  }

  void eliminarTodasLasBajas() {
    _bajas.clear();
    notifyListeners();
  }
}
