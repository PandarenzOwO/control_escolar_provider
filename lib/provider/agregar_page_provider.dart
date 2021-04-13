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

  Widget generateInput(controller, validator, hintText) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        controller: controller,
        validator: (val) => validator(val),
        decoration: InputDecoration( labelText: hintText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.0),
        generateInput(txtnombre, (String text) => text.isEmpty, "Ingresa el nombre"),
        generateInput(txtgrado, (String text) => text.isEmpty, "Ingresa los grados xd"),
        generateInput(txtgrupo, (String text) => text.isEmpty, "Ingresa el grupo"),
        generateInput(txtedad, (String text) => text.isEmpty, "Ingresa la edad"),
        generateInput(txtfoto, (String text) => text.isEmpty, "Ingresa la foto"),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Row(
                children: [Icon(Icons.add), Text("Popo")],
              ),
            ),
          ],
        ),
      ],
    );
  }
}