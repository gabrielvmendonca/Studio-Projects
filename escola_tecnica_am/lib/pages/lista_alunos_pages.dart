import 'package:flutter/material.dart';

import '../widgets/aluno_card.dart';

List<Map<String, String>> alunosCadastrados = [
  {
    'nome': 'Ana Souza',
    'email': 'ana@email.com',
    'curso': 'Desenvolvimento de Sistema',
    'turma': 'UC12 - Flutter',
  },
  {
    'nome': 'Carlos Lima',
    'email': 'carlos@email.com',
    'curso': 'Desenvolvimento de Sistema',
    'turma': 'UC12 - Flutter',
  },
  {
    'nome': 'Mariana Alves',
    'email': 'ana@email.com',
    'curso': 'Desenvolvimento de Sistema',
    'turma': 'UC12 - Flutter',
  },
];

class ListaAlunoPage extends StatelessWidget{
  const ListaAlunoPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de alunos'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.red,
      ),

      body: Padding(
        padding: const EdgeInsetsGeometry.all(16),

        child: alunosCadastrados.isEmpty
            ? const Center(
          child: Text(
            'Nenhum alunno cadastrado',
            style: TextStyle(fontSize: 18),
          ),
        )
            :ListView(
          children: [
            const Text(
              'Alunos cadastrados',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Toque em um aluno para visualizar os detalhes. ',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            for (var aluno in alunosCadastrados)
              AlunoCard(
                nome: aluno['nome']!,
                email: aluno['email']!,
                curso: aluno['curso']!,
                turma: aluno['turma']!,

              ),
          ],
        ),
      ),
    );
  }
}