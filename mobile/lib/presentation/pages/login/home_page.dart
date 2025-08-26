import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mobile/shared/widgets/bottom_navbar.dart';
import 'package:mobile/shared/widgets/primary_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  double progresso = 0.6;
  int saldo = 4000;
  bool saldo_view = true;
  int _currentIndex = 0;
  Color _set_color_value(int valor){
    
    if(valor < 0 ){
      return Colors.red;
    }

    return Colors.green;
  }

  void _alter_view_saldo(){
    setState(() {
      saldo_view = !saldo_view;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20, // controla o tamanho do círculo
              backgroundColor: Colors.white.withOpacity(0.3), // fundo claro
              child: ClipOval(
                child: Image.asset(
                  'assets/images/people.png',
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover, // mantém proporção e cobre o círculo
                ),
              ),
            )
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(saldo_view ? Icons.remove_red_eye : Icons.visibility_off),
              onPressed: () {
                _alter_view_saldo();
              },
            ),
          ],
        ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
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
                      !saldo_view ? "R\$ ****": "R\$ $saldo",
                      style: TextStyle(color: _set_color_value(saldo), fontSize: 40),
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
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 120, // altura do slider
                child: ListView(
                  scrollDirection: Axis.horizontal, // permite arrastar horizontalmente
                  children: [
                    Container(
                      width: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(158, 100, 71, 153),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.credit_card, color: Colors.white),
                          const Spacer(), // ocupa todo o espaço restante
                          const Text(
                            'Pix no Credito',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(158, 100, 71, 153),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.history, color: Colors.white),
                          const Spacer(), // ocupa todo o espaço restante
                          const Text(
                            'Antecipar FGTS',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(158, 100, 71, 153),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.trending_up, color: Colors.white),
                          const Spacer(), // ocupa todo o espaço restante
                          const Text(
                            'Invest',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(158, 100, 71, 153),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.monetization_on, color: Colors.white),
                          const Spacer(), // ocupa todo o espaço restante
                          const Text(
                            'Cripto',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                    )

                    
                  ],
                ),
              ),
              const SizedBox(height: 16),
              
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
                      'Limite cartao de credito',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10), // arredonda os cantos
                        child: SizedBox(
                          height: 15, // deixa a barra mais “gordinha”
                          child: LinearProgressIndicator(
                            value: progresso, // valor entre 0 e 1
                            color: Colors.green, // cor da barra
                            backgroundColor: Colors.grey[300], // cor do fundo
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('R\$ 625,10', style: TextStyle(color: Colors.white),),
                            Text('Utilizado', style: TextStyle(color: const Color.fromARGB(137, 255, 255, 255)))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('R\$ 1500,50', style: TextStyle(color: Colors.white, fontSize: 20)),
                            Text('Disponivel', style: TextStyle(color: const Color.fromARGB(137, 255, 255, 255)))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

