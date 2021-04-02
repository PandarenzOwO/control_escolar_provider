import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Control Escolar",
            style: TextStyle(
              fontSize: 26.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Column(
                children: [
                  navegadorCartas(
                      context,
                      "Agregar Alumnos",
                      "https://img.icons8.com/dusk/452/add-user-group-man-woman.png",
                      "Aqui podra agregar nuevos alumnos a la escuela",
                      "agregar"),
                  navegadorCartas(context, "titulo", "imagen", "texto", "ruta"),
                  navegadorCartas(context, "titulo", "imagen", "texto", "ruta"),
                  // Text("Carta agregar alumno"),
                  // Text("Carta lista de alumnos"),
                  // Text("Carta alumnos graduados"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget navegadorCartas(BuildContext context, String titulo, String imagen,
      String texto, String ruta) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ruta);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(15.0),
        elevation: 10.0,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.network(
                imagen,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Text(
                  titulo,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text("\n" + texto, textAlign: TextAlign.center),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
