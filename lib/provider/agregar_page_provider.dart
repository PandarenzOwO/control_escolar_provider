import 'package:control_escolar_provider/models/estudiante.dart';
import 'package:control_escolar_provider/provider/alumnos_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AgregarEstudiantePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Agregar Alumnos",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 26.0,
          ),
        ),
      ),
      body: AgregarPage(),
    );
  }
}

class AgregarPage extends StatefulWidget {
  AgregarPage({Key key}) : super(key: key);

  @override
  _AgregarPageState createState() => _AgregarPageState();
}

class _AgregarPageState extends State<AgregarPage> {
  TextEditingController txtnombre = TextEditingController();
  TextEditingController txtapellidos = TextEditingController();
  TextEditingController txtgrado = TextEditingController();
  TextEditingController txtgrupo = TextEditingController();
  TextEditingController txtfoto = TextEditingController();
  TextEditingController txtedad = TextEditingController();

  Widget generateInputText(controller, validator, hintText) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: controller,
        validator: (value) {
          if (value.isEmpty) {
            return 'Por favor rellene el campo';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(labelText: hintText),
      ),
    );
  }

  Widget generateInputNumber(controller, validator, hintText) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: controller,
        validator: (value) {
          if (value.isEmpty) {
            return 'Por favor rellene el campo';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(labelText: hintText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final listaAlumnos = Provider.of<EstudiantesProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.0),
        generateInputText(txtnombre, (String text) => text.isEmpty,
            "Ingrese el nombre del alumno"),
        generateInputText(txtapellidos, (String text) => text.isEmpty,
            "Ingrese sus apellidos"),
        generateInputNumber(txtgrado, (String text) => text.isEmpty,
            "Ingrese el semestre en el que se encuentra"),
        generateInputText(txtgrupo, (String text) => text.isEmpty,
            "Ingrese el grupo al que pertenece"),
        generateInputNumber(
            txtedad, (String text) => text.isEmpty, "Ingrese su edad"),
        SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {
                  listaAlumnos.agregarEstudiante(Estudiante(
                      nombre: txtnombre.text,
                      apellidos: txtapellidos.text,
                      edad: int.parse(txtedad.text),
                      grado: int.parse(txtgrado.text),
                      grupo: txtgrupo.text,
                      activo: true));
                  txtnombre.clear();
                  txtapellidos.clear();
                  txtgrado.clear();
                  txtgrupo.clear();
                  txtedad.clear();
                },
                child: Row(
                  children: [
                    Icon(Icons.add, color: Colors.white),
                    Text(
                      "Agregar Alumno",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    )
                  ],
                ))
          ],
        )
      ],
    );
  }
}
