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
                  Text("Carta agregar alumno"),
                  Text("Carta lista de alumnos"),
                  Text("Carta alumnos graduados"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cartas() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Card(),
    );
  }
}
