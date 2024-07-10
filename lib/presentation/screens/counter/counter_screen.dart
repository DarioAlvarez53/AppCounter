import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: 
              const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100
              ),
            ),
            Text('Click${clickCounter == 1 ? '' : 's'}', style: 
              const TextStyle(
                fontSize: 25,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        //Funcion para que vuelva a renderizar el Widget completo
        setState(() {
          //funcion para ir sumando uno cuando se le de click al boton
          //Metodo 1:
          // clickCounter = clickCounter + 1;
          //Metodo 2:
          // clickCounter += 1;
          //Metodo 3:
          clickCounter ++;
        });
      },
      child: const Icon(Icons.plus_one),
      )
    );
  }
}