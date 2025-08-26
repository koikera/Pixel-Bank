import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mobile/shared/widgets/primary_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  Color _set_color_value(int valor){
    if(valor < 0 ){
      return Colors.red;
    }

    return Colors.green;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/people.png',
              height: 30,
              width: 30,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.remove_red_eye),
              onPressed: () {},
            ),
          ],
        ),
      backgroundColor: const Color.fromARGB(255, 20, 2, 53),
      body:
        SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16), // espaço interno
                decoration: BoxDecoration(
                  color: const Color.fromARGB(158, 100, 71, 153), // fundo branco
                  borderRadius: BorderRadius.circular(12), // bordas arredondadas
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1), // sombra leve
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saldo',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "R\$ -200",
                      style: TextStyle(color: _set_color_value(-100), fontSize: 40),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () => {},
                          icon: const Icon(Icons.pix),
                          label: const Text('Pix'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 35, 1, 99),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                            textStyle: const TextStyle(fontSize: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton.icon(
                          onPressed: () => {},
                          icon: const Icon(Icons.receipt),
                          label: const Text('Pagar'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 35, 1, 99),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                            textStyle: const TextStyle(fontSize: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton.icon(
                          onPressed: () => {},
                          icon: const Icon(Icons.payment_rounded),
                          label: const Text('Cartoes'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 35, 1, 99),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                            textStyle: const TextStyle(fontSize: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}

