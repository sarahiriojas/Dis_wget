import 'package:flutter/material.dart';

void main() => runApp(RiojasApp());

class RiojasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bordes Katia",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity, //Visual Density
      ), //Theme
      home: PaginaInicio(),
    ); //Return Materialapp
  } //Build Riojasapp
} //RiojasApp

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bordes de Katia Riojas"),
        centerTitle: true,
      ), //fin appbar
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 15),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.green[200],
                    width: 10,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Katia Riojas',
                    style: TextStyle(fontSize: 20),
                  ),
                ), //Child Center
              ), //Container
              SizedBox(
                height: 50,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/sarahiriojas/Mis-Imagenes/main/yop.jpeg'), alignment: Alignment.topCenter),
                  border: Border(
                    top: BorderSide(
                      color: Colors.purple[300],
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.purple[300],
                      width: 5.0,
                    ),
                  ),
                ), //Decoration box
              ), //Container foto
              SizedBox(
                height: 50,
              ),
              new Container(
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 5.0,
                  ),
                ),
                child: Text(
                  "Programacion de 6J",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ], //Children
          ), //Columna
        ), //Body
      ), //Single
    ); //Scaffold
  } //Widget
} //Clase pagina de inicio
