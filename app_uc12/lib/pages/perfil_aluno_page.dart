import 'package:flutter/material.dart';

import 'informacoes.dart';

class PerfilAlunoPage extends StatelessWidget{

  const PerfilAlunoPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(

        title: const Text('Perfil de Aluno'),

        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: Padding(
          padding: const EdgeInsets.all(24),

              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const Icon(
                    Icons.account_circle,
                    size: 100,
                    color: Colors.deepPurple,

                ),

                const SizedBox(height: 16),

                const Text(
                  'Gabriel Vergilio',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Tecnico em Desenvolvimento de Sistema',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 24),

                Container(
                  padding: const EdgeInsets.all(16),

                  decoration: BoxDecoration(

                    color: Colors.deepPurple.shade50,

                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: const Row(
                    children: [
                      Icon(
                        Icons.school,
                        color: Colors.indigo,
                      ),

                      SizedBox(width: 12),

                      Expanded(
                          child:Text(
                            'UC12 - Inerface ,usabi lidade e aplicação mobile',
                            style: TextStyle(fontSize: 16),
                          ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,

                  height: 50,

                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Informacoes(),
                        ),

                      );
                    },
                    child: Text('Ver Informações'),
                  ),
                ),
              ],
          ),
      ),
    );
  }



}