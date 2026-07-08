import 'package:flutter/material.dart';

import '../widgets/aluno_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  final List<Map<String,String>> alunos = const [
    {
      'nome': 'Aline Francisca',
      'curso': 'Desenvolvimento de Sistema',
      'turma': 'UC12 - Flutter',
    },
    {
      'nome': 'Ricardo Prado',
      'curso': 'Desenvolvimento de Sistema',
      'turma': 'UC12 - Flutter',

    },
    {
      'nome': 'Marcos Costa',
      'curso': 'Desenvolvimento de Sistema',
      'turma': 'UC12 - Flutter',
    },
    {
      'nome': 'Eliane Prado',
      'curso': 'Desenvolvimento de Sistema',
      'turma': 'UC12 - Flutter',
    },
    {
      'nome': 'Arthur Prado',
      'curso': 'Desenvolvimento de Sistema',
      'turma': 'UC12 - Flutter',
    },
  ];

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Alunos cadastrados'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),

      body: Padding(
          padding: const EdgeInsetsGeometry.all(16),
            child: ListView(
              children: [
                const Text(
                  'Lista de alunos',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Toque em um aluno para visualizar os detalhes.',
                  style: TextStyle(fontSize: 16),
                ),

                const SizedBox(height: 20),

                for (var aluno in alunos)
                  AlunoCard(
                    nome : aluno['nome']!,
                    curso : aluno['curso']!,
                    turma : aluno['turma']!,
                  ),
              ],
            ),
      ),
    );
  }
}