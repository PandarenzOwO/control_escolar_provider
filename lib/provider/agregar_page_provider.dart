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
          'Agregar Alumnos',
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
  _FormExampleState createState() => _FormExampleState();
}

class _FormExampleState extends State<AgregarPage> {
  TextEditingController txtid = TextEditingController();
  TextEditingController txtnombre = TextEditingController();
  TextEditingController txtapellidos = TextEditingController();
  TextEditingController txtgrado = TextEditingController();
  TextEditingController txtgrupo = TextEditingController();
  TextEditingController txtedad = TextEditingController();
  TextEditingController txtfoto = TextEditingController();

  Widget generateInput(controller, validator, hintText) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        controller: controller,
        validator: (val) => validator(val),
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
        SizedBox(height: 10.0),
        generateInput(txtnombre, (String text) => text.isEmpty,
            "Ingrese el nombre del alumno"),
        generateInput(txtapellidos, (String text) => text.isEmpty,
            "Ingrese sus apellidos"),
        generateInput(txtgrado, (String text) => text.isEmpty,
            "Ingrese el semestre en el que se encuentra"),
        generateInput(txtgrupo, (String text) => text.isEmpty,
            "Ingresa el grupo al que asiste"),
        generateInput(
            txtedad, (String text) => text.isEmpty, "Ingresa su edad"),
        /*
        generateInput(txtfoto, (String text) => text.isEmpty,
            "Ingresa el link o url de su foto"),
            */
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                print("Agregado");
                listaAlumnos.agregarEstudiante(Estudiante(
                    nombre: txtnombre.text,
                    apellidos: txtapellidos.text,
                    edad: int.parse(txtedad.text),
                    grado: int.parse(txtgrado.text),
                    grupo: txtgrupo.text,
                    //foto: txtfoto.text,
                    activo: true));
                txtnombre.clear();
                txtapellidos.clear();
                txtedad.clear();
                txtgrado.clear();
                txtgrupo.clear();
                //txtfoto.clear();
              },
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    "Agregar alumno",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
