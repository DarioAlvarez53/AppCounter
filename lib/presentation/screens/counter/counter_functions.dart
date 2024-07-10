import 'package:flutter/material.dart';

class CounterFunction extends StatefulWidget {
  const CounterFunction({super.key});

  @override
  State<CounterFunction> createState() => _CounterFunctionState();
}

class _CounterFunctionState extends State<CounterFunction> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded), 
            onPressed: () { 
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              //Funcion para que vuelva a renderizar el Widget completo
              setState(() {
                //funcion para ir sumando uno cuando se le de click al boton
                //Metodo 1:
                // clickCounter = clickCounter + 1;
                //Metodo 2:
                // clickCounter += 1;
                //Metodo 3:
                clickCounter = 0;
              });
            },
            child: const Icon(Icons.refresh),
          ),

          const SizedBox(height: 15),
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
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
          ),

          const SizedBox(height: 15),

          CustomButton(icon: Icons.refresh_outlined,)
        ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon; 

  const CustomButton({
    super.key, 
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: () {},
      child: Icon(icon),
    );
  }
}