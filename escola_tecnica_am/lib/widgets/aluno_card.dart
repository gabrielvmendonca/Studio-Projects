
import 'package:flutter/material.dart';

import '../pages/detalhe_page.dart';

class AlunoCard extends StatelessWidget{
  final String nome;
  final String email;
  final String curso;
  final String turma;

  const AlunoCard({
    super.key,
    required this.nome,
    required this.email,
    required this.curso,
    required this.turma,
});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,

      margin: const EdgeInsets.only(bottom: 14),

      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.deepPurple,
          child: Icon(
            Icons.person,
            color: Colors.red,
          ),
        ),

        title: Text(
          nome,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Text('$curso\n$turma'),

        isThreeLine: true,

        trailing: const Icon(Icons.arrow_forward_ios),

        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetalhePage(
                    nome: nome,
                    email: email,
                    curso: curso,
                    turma: turma,
                  ),
              ),
          );
        },
      ),
    );
  }
}