import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_functions.dart';
// import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main () {
  //Toda aplicacion siempre inicia con un runApp();
  runApp(const MyApp());
}

// Stateless Widget
// Es una pieza de lego que se construye muy rápido y
// no mantiene el estado por si mismo. Flutter sabe
// cuando se de be de volver a dibujar, es recomendado
// que en lugar de crear funciones y métodos que
// retornan Widget, es mejor crear Clases que extiendan
// de estos StatelesWidgets.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueAccent
      ),
      home: const CounterFunction(

      )
    );
  }
}