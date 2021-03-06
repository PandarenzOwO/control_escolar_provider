import 'package:control_escolar_provider/home_page.dart';
import 'package:control_escolar_provider/provider/agregar_page_provider.dart';
import 'package:control_escolar_provider/provider/alumnos_provider.dart';
import 'package:control_escolar_provider/provider/bajas_page_provider.dart';
import 'package:control_escolar_provider/provider/lista_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EstudiantesProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),
            'lista': (context) => ListaPage(),
            'bajas': (context) => BajasPage(),
            'agregar': (context) => AgregarEstudiantePage(),
          }),
    );
  }
}
