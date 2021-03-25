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
        primarySwatch: Colors.blue.shade300,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Control Escolar",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
        ),
      ),
    );
  }
}
