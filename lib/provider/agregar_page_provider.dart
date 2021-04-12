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
        SizedBox(height: 15),
        Row(
          children: [
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text("Semestre: "),
            //MyStatefulWidget(),
          ],
        ),
      ],
    );
  }
}

//////////////////////***************************//////////////////////
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key key}) : super(key: key);

//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }

// /// This is the private State class that goes with MyStatefulWidget.
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   String dropdownValue = 'Primero';
//   List<String> valores = <String>[
//     'Primero',
//     'Segundo',
//     'Tercero',
//     'Cuarto',
//     'Quinto',
//     'Sexto',
//     'Septimo',
//     'Octavo',
//     'Noveno',
//     'Decimo',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: const Icon(Icons.keyboard_arrow_down_rounded),
//       iconSize: 24,
//       elevation: 8,
//       style: const TextStyle(color: Colors.black),
//       underline: Container(
//         height: 1,
//         color: Colors.blueAccent,
//       ),
//       onChanged: (String newValue) {
//         setState(() {
//           dropdownValue = newValue;
//         });
//       },
//       items: valores.map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }

//////////////////////***************************//////////////////////
