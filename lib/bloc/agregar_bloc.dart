import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.0),
        // Center(
        //   child: Text(
        //     "Ingrese los datos del alumno",
        //     style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
        //   ),
        // ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
            controller: txtnombre,
            validator: (value) {
              if (value.isEmpty) {
                return 'Por favor, ingresa un nombre';
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
                hintText: "Nombre", labelText: "Ingrese el nombre del alumno"),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
            controller: txtapellidos,
            validator: (value) {
              if (value.isEmpty) {
                return 'Por favor, ingrese los apellidos';
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
                hintText: "Apellidos",
                labelText: "Ingrese los apellidos del alumno"),
          ),
        ),
        Row(
          children: [],
        ),
      ],
    );
  }
}
